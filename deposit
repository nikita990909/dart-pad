import 'dart:html';

void main() {
  var depositProcent = 0.13;
  double depositProcentPayment = 0;
  var depositProcentTxt = depositProcent * 100;
  var yearDeposit = 10;
  var depositMounth = yearDeposit * 12;
  double depositMoney = 1000000;
  double depositSum = depositMoney;
  double depositDiffirence = 0;
  var depositHeader =
      "Расчёт депозита | Годовая процентная ставка $depositProcentTxt%";
  var depositFirst = "Первоначальный взнос: ";
  var depositSumTxt = "Через $yearDeposit лет у Вас будет: ";
  var depositDiffirenceTxt = "Ваше вознаграждение за $yearDeposit лет: ";
  var depositPayment = "Среднее вознаграждение за месяц: ";
  for (var i = 0; i < yearDeposit; i++) {
    depositProcentPayment = depositSum * depositProcent;
    depositSum += depositProcentPayment;
  }
  depositDiffirence = depositSum - depositMoney;
  depositProcentPayment = depositSum / depositMounth;
  final depositHeaderHtml = querySelector('#depositHeader');
  final depositFirstHtml = querySelector('#depositFirst');
  final depositSumHtml = querySelector('#depositSum');
  final depositDiffirenceHtml = querySelector('#depositDiffirence');
  final depositPaymentHtml = querySelector('#depositPayment');
  depositPayment += depositProcentPayment.toStringAsFixed(2) + "тг.";
  depositDiffirenceTxt += depositDiffirence.toStringAsFixed(2) + "тг.";
  depositSumTxt += depositSum.toStringAsFixed(2) + "тг.";
  depositFirst += depositMoney.toStringAsFixed(2) + "тг.";
  depositHeaderHtml?.text = depositHeader;
  depositFirstHtml?.text = depositFirst;
  depositSumHtml?.text = depositSumTxt;
  depositDiffirenceHtml?.text = depositDiffirenceTxt;
  depositPaymentHtml?.text = depositPayment;
}
