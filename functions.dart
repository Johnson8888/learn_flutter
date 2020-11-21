/*
 * @Author: 弗拉德
 * @Date: 2020-11-20 17:13:12
 * @LastEditTime: 2020-11-21 15:03:18
 * @Support: http://fulade.me
 */

/*  //带有返回值的写法
bool isEmpty(List aList) {
  return aList.length == 0;
}
*/

/*
/// 简单写法
bool isEmpty(List aList) => aList == 0;
*/

//enableFlags(bold: true, hidden: false);

// void enableFlags({bool bold, bool hidden}) {...}

/// 可选参数
/*
strings(String s1, String s2, [String s3]) {
  var result = '$s1 and $s2';
  if (s3 != null) {
    result = '$result and $s3';
  }
  print(result);
}*/
/*
strings(String s1, String s2, [String s3 = 'this is s3', String s4]) {
  var result = '$s1 and $s2';
  if (s3 != null) {
    result = '$result and $s3';
  }
  if (s4 != null) {
    result = '$result and $s4';
  }
  print(result);
}
*/

/* 函数作为参数
void printElement(int element) {
  print(element);
}

*/

main(List<String> args) {
/*
  var aList = [];
  bool aa = isEmpty(aList);
  print("the list $aList is empty = " + aa.toString());
  */
/*
  strings("s1", "s2");
  strings("s1", "s2", "s3");
  */
//strings("s1", "s2");

/* 函数作为参数
  将 printElement 函数作为参数传递。
  var list = [1, 2, 3];
  list.forEach(printElement);
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  var result = loudify('hello');
  print(result);
  */
/*  匿名函数
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) => print('${list.indexOf(item)}: $item'));
  */
}

/*变量作用域
bool topLevel = true;
void main() {
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
*/
