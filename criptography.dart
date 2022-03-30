import 'dart:math';

void main() {
  var str = '4400123456789100';
  var key = [random(20), random(5), random(20)]; // + * -
  var card = [];
  var res = '';
  for (var i = 0; i < str.length; i++) {
    card.add(int.parse(str[i]));
  }
  for (var i = 0; i < card.length; i++) {
    card[i] += key[0];
    card[i] *= key[1];
    card[i] -= key[2];
    if (card[i] > 26 && card[i] < 53) {
      res += alphvit(card[i]) + ' ';
    } else {
      res += card[i].toString() + ' ';
    }
  }
  print('Начальное значение: ' + numBank(int.parse(str)));
  print('Ключи ширования: ' +
      key[0].toString() +
      ' | ' +
      key[1].toString() +
      ' | ' +
      key[2].toString());
  print('Зашифрованное значение: ' + res);
  res = '';
  for (var i = 0; i < card.length; i++) {
    card[i] += key[2];
    card[i] /= key[1];
    card[i] -= key[0];
    if (card[i] > 26 && card[i] < 53) {
      res += alphvit(card[i]);
    } else {
      res += card[i].toString();
    }
  }
  print('Расшифрованное значение: ' + numBank(int.parse(res)));
}

String hello(String name) => 'Приветствую, $name';

int random(int n) => Random().nextInt(n) + 1;

int transferMoneyUsdToTg(int money, double curs) {
  double result = money / curs;
  return result.floor();
}

int transferMoneyTgToUsd(int money, double curs) {
  double result = money * curs;
  return result.floor();
}

double minutes(var time) => time * 60;

String alphvit(var num) {
  var res;
  var alph = {
    1: 'a',
    2: 'b',
    3: 'c',
    4: 'd',
    5: 'e',
    6: 'f',
    7: 'g',
    8: 'h',
    9: 'i',
    10: 'j',
    11: 'k',
    12: 'l',
    13: 'm',
    14: 'n',
    15: 'o',
    16: 'p',
    17: 'q',
    18: 'r',
    19: 's',
    20: 't',
    21: 'u',
    22: 'v',
    23: 'w',
    24: 'x',
    25: 'y',
    26: 'z'
  };
  if (num > 26 && num < 53) {
    res = alph[num - 26];
  } else {
    res = num.toString();
  }
  return res.toUpperCase();
}

String time(var time) {
  var res = '';
  var hours = 0;
  dynamic minutes = 0;
  while (time >= 60) {
    hours++;
    time -= 60;
  }
  minutes = time;
  minutes = minutes.floor();
  res += '$hours час(а/ов) $minutes минут(ы)';
  return res;
}

double accumulation(int monthPay, int month, double procent) =>
    (monthPay * procent) * month;

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

String numBank(int num) {
  var n = num.toString();
  var check = 0;
  List<String> list = n.split("");
  var res = '';
  for (var i = list.length - 2; i >= 0; i--) {
    check++;
    if (check == 4) {
      list[i] += ' ';
      check = 0;
    }
  }
  for (var i = 0; i < list.length; i++) {
    res += list[i];
  }
  return res;
}
