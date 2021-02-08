/*
 * @Author: 弗拉德
 * @Date: 2021-02-07 09:55:00
 * @LastEditTime: 2021-02-08 09:50:47
 * @Support: http://fulade.me
 */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class SqfliteDemoPage extends StatefulWidget {
  @override
  _SqfliteDemoPageState createState() => _SqfliteDemoPageState();
}

class _SqfliteDemoPageState extends State<SqfliteDemoPage> {
  /// 数据源 数组
  List dataList = [];

  /// 记录最后一个插入数据的id，用来测试删除数据的
  int lastInsertDataId = null;

  @override
  Future<void> initState() {
    super.initState();
    SqfliteManager.getInstance().then((dataBase) {
      dataBase.queryData().then((value) {
        setState(() {
          dataList = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("SqfliteDemoPage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: ListView.builder(
              itemBuilder: (context, index) {
                var item = dataList[index];
                return ListTile(
                  title: Text(item["id"].toString() + ". " + item["title"]),
                  subtitle: Text(item["cover"]),
                );
              },
              itemCount: dataList.length,
              itemExtent: 60,
            ),
          ),
          Container(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      onPressed: () => _getAllData(),
                      child: Text("Get All"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      onPressed: () {
                        _insertData();
                        _getAllData();
                      },
                      child: Text("Insert"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      onPressed: () {
                        _deleteLastData();
                        _getAllData();
                      },
                      child: Text("Delete"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      onPressed: () {
                        _updateLastData();
                        _getAllData();
                      },
                      child: Text("Update"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 在json数据内 随机取一个数据 更新到最后一条数据内
  Future<void> _updateLastData() async {
    String jsonString = await rootBundle.loadString("json/musicList.json");
    List musicList = json.decode(jsonString);

    /// 随机取一个下标
    int index = Random().nextInt(musicList.length) - 1;
    Map updateData = musicList[index];
    updateData.remove("id");
    int result = await SqfliteManager.getInstance()
        .then((dataBase) => dataBase.updateData(updateData, lastInsertDataId));
    print("update result = $result");
  }

  Future<void> _deleteLastData() async {
    int result = await SqfliteManager.getInstance()
        .then((dataBase) => dataBase.deleteData(lastInsertDataId));
    print("delete result = $result");
  }

  Future<void> _getAllData() async {
    List tmpList = await SqfliteManager.getInstance()
        .then((dataBase) => dataBase.queryData());
    lastInsertDataId = tmpList.last["id"];
    print("lastInsertDataId = $lastInsertDataId");
    setState(() {
      dataList = tmpList;
    });
  }

  //// 读取本地json文件，随机取一个数据并插入到数据库
  Future<void> _insertData() async {
    String jsonString = await rootBundle.loadString("json/musicList.json");
    List musicList = json.decode(jsonString);

    /// 随机取一个下标
    int index = Random().nextInt(musicList.length) - 1;
    Map insertData = musicList[index];
    int result = await SqfliteManager.getInstance()
        .then((database) => database.insertData(insertData));
    print("insert id = $result");
  }
}

/// 用来 管理数据库的类
class SqfliteManager {
  //// sql 文件的名字
  static final sqlName = "db.sqlite";
  static final tableName = "musicList";
  Database db;
  static SqfliteManager _instance;

  /// 创建table 的 sql语句
  static var CREATE_DATA_TABLE = '''
        create table musicList (
        id integer primary key,
        cover text not null,
        title text not null,
        detail text not null,
        soundfile text not null,
        duration integer)
        ''';

  static Future<SqfliteManager> getInstance() async {
    if (_instance == null) {
      _instance = await _initDataBase();
    }
    return _instance;
  }

  /// 打开 数据库 db
  static Future<SqfliteManager> _initDataBase() async {
    SqfliteManager manager = SqfliteManager();
    String dbPath = await getDatabasesPath() + "/$sqlName";
    print("dbPath = $dbPath");
    if (manager.db == null) {
      manager.db = await openDatabase(
        dbPath,
        version: 1,
        onCreate: (db, version) async {
          /// 如果不存在 当前的表 就创建需要的表
          if (await manager.isTableExit(db, tableName) == false) {
            await db.execute(CREATE_DATA_TABLE);
          }
        },
      );
    }
    return manager;
  }

  /// 插入数据
  Future<int> insertData(Map<String, dynamic> value) async {
    /// 因为原数据里面有id参数，先移除掉
    value.remove("id");
    return await db.insert(tableName, value);
  }

  /// 查询数据
  Future<List<Map<String, dynamic>>> queryData() async {
    return await db.query(tableName);
  }

  /// 删除一条数据
  Future<int> deleteData(int id) async {
    if (id == null || id == 0) {
      return 0;
    }
    return await db.delete(tableName, where: "id = ?", whereArgs: [id]);
  }

  /// 更新数据
  Future<int> updateData(Map<String, dynamic> value, int id) async {
    return await db.update(
      tableName,
      value,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  /// 判断是否存在 数据库表
  Future<bool> isTableExit(Database db, String tableName) async {
    var result = await db.rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return result != null && result.length > 0;
  }
}
