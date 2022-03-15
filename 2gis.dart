import 'dart:math';

void main() {
  var trafficJam = {
    1: 80,
    2: 60,
    3: 40,
    4: 20,
    5: 10
  }; // Баллы пробки : средняя скорость
  var str = 'Наилучший путь:\n';
  var vays = {
    100: 2,
    220: 1,
    100: 3
  }; //Расстояние км. : количество баллов пробки
  int optimalVay = 10; // Просто любое значение чтобы не ругался
  double minTime = 24; // Просто любое значение чтобы не ругался
  for (var i = 0; i < vays.length; i++) {
    var s = vays.keys.elementAt(i); //Выясняем расстояние которое нужно проехать
    dynamic v =
        trafficJam[vays[s]]; //Выясняем среднюю скорость на этом расстоянии
    if (minTime > s / v) {
      minTime = s / v; // Вычисляем наименьшее время
    } else {
      optimalVay = i - 1; // Запоминаем путь
    }
  }
  print('$strВремя: ' + time(minutes(minTime)));
  print('Расстоянее: ' + vays.keys.elementAt(optimalVay).toString() + ' км.');
  print('Скорость: ' +
      trafficJam[vays[vays.keys.elementAt(optimalVay)]].toString() +
      ' км/ч');
}

String hello(String name) => 'Приветствую, $name';

int random(int n) => Random().nextInt(n);

int transferMoneyUsdToTg(int money, double curs) {
  double result = money / curs;
  return result.floor();
}

int transferMoneyTgToUsd(int money, double curs) {
  double result = money * curs;
  return result.floor();
}

double minutes(var time) => time * 60;

String time(var time) {
  var res = '';
  var hours = 0;
  double minutes = 0;
  while (time >= 60) {
    hours++;
    time -= 60;
  }
  minutes = time;
  minutes.floor();
  res += '$hours час(а/ов) $minutes минут(а)';
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
