import 'dart:math';

void main() {
  var str = 14258369;
  print(numStr(str)+'тг.');
}

String hello(String name) => 'Приветствую, $name';

int random(int n) => Random().nextInt(n);

String numStr(int num) {
  var n = num.toString();
  var check = 0;
  List<String> list = n.split("");
  var res = '';
  for (var i = list.length - 2; i >= 0; i--) {
    check++;
    if (check == 3) {
      list[i] += ' ';
      check = 0;
    }
  }
  for (var i = 0; i < list.length; i++) {
    res += list[i];
  }
  return res;
}
