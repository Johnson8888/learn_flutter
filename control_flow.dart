/*
 * @Author: 弗拉德
 * @Date: 2020-11-18 11:49:25
 * @LastEditTime: 2020-11-18 13:51:57
 * @Support: http://fulade.me
 */

void main(List<String> args) {
  /*--------------------------if else--------------------------------*/
  int i = 3;
  if (i == 0) {
    print("value 0");
  } else if (i == 1) {
    print("value 1");
  } else {
    print("other value");
  }

  /*--------------------------for in forEach()--------------------------------*/
  /*
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  */
  /*
  var collection = [1, 2, 3];
  for (var x in collection) {
    print(x); // 1 2 3
  }
  */
  /*--------------------------while do-while--------------------------------*/
  /*
  var i = 0;
  while (i < 10) {
    i++;
    print("i = " + i.toString());
  }
  */
  /*
  var i = 0;
  do {
    i++;
    print("i = " + i.toString());
  } while (i < 10);
  */
  /*--------------------------break Continue--------------------------------*/
  /*
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("break now");
      break;
    }
    print("i = " + i.toString());
  }
  */
  /*
  for (int i = 0; i < 10; ++i) {
    if (i < 5) {
      continue;
    }
    print("i = " + i.toString());
  }
  */
  /*
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].where((i) => i > 5).forEach((i) {
    print("i = " + i.toString());
  });
  */
  /*--------------------------Switch Case--------------------------------*/
  /*
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      break;
    case 'PENDING':
      print('PENDING');
      break;
    case 'APPROVED':
      print('APPROVED');
      break;
    case 'DENIED':
      print('DENIED');
      break;
    case 'OPEN':
      print('OPEN');
      break;
    default:
      print('UNKNOW');
  }
  */
  /*
  var command = 'NOW_CLOSED';
  switch (command) {
    case 'CLOSED': // case 语句为空时的 fall-through 形式。
    case 'NOW_CLOSED':
      // case 条件值为 CLOSED 和 NOW_CLOSED 时均会执行该语句。
      print(command);
      break;
  }
  */
  /*--------------------------断言--------------------------------*/
  /*
  var urlString = "Fulade";
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');
  */
}
