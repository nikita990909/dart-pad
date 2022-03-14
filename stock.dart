import 'dart:math';

void main() {
  dynamic all = 1000000;
  dynamic sell = random(all);
  var procent = sell / all * 100;
  dynamic price = random(1000) + 1;
  dynamic sumUsd = price * sell;
  dynamic sumTg = transferMoneyTgToUsd(sumUsd, 511);
  all = numStr(all);
  sell = numStr(sell);
  sumUsd = numStr(sumUsd);
  sumTg = numStr(sumTg);
  print('''Всего $all акций компании\nЦена одной акции: $price\$
Куплено $sell акций компании на сумму $sumUsd\$ ~ $sumTgтг.
Процент купленных акций: $procent%''');
}

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

int transferMoneyUsdToTg(int money, double curs) {
  double result = money / curs;
  return result.floor();
}

int transferMoneyTgToUsd(int money, double curs) {
  double result = money * curs;
  return result.floor();
}
