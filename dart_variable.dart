/*
 * @Author: 弗拉德
 * @Date: 2020-11-11 08:28:24
 * @LastEditTime: 2020-11-18 14:06:28
 * @Support: http://fulade.me
 */
void main() {
  /// 初始化一个字符串
  // var name = 'Fulade';

  /// Int类型
  var year = 1987;

  /// 浮点数类型
  var antennaDiameter = 3.7;

  /// 数组
  var flybyObjects = ['木星', '土星', '天王星', '海王星'];

  /// 字典类型
  var image = {
    'tags': ['土星'],
    'url': '//path/to/saturn.jpg'
  };

  int lineCount;
  if (lineCount == null) {
    print("line is null");
  }

  final name = 'Bob';
  final String nickname = 'Bobby';
  // 运行下面这句会报错
  // name = 'Alice'; // Error: a final variable can only be set once.

  const i = 100;
  const double j = i * 1.01;
}
