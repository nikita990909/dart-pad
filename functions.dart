import 'dart:math';

void main() {
  double curs = 513;
  var monthPay = 200000;
  var month = 12;
  var procent = 0.2;
  var procentTxt = procent * 100;
  var name = 'Попов Никита Станиславович';
  print(hello(name));
  print('За $month месяцев вы сможете отложить (учитывая зарплату: ' +
      numStr(monthPay) +
      'тг. и процент который будете откладывать: $procentTxt%): \n' +
      numStr(accumulation(monthPay, month, procent).floor()) +
      'тг.' +
      " или ~" +
      numStr(transferMoneyUsdToTg(accumulation(monthPay, month, procent).floor(), curs)
          .floor()) +
      "\$");
}

double minutes(var time) => time*60;

String time(double time){
  var res = '';
  var hours = 0;
  double minutes = 0;
  while (time>=60){
    hours++;
    time -= 60;
  }
  minutes = time;
  minutes.floor();
  res += '$hours час(а/ов) $minutes минут(а)';
  return res;
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
