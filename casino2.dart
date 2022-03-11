import 'dart:math';

void main() {
  var chance = 100;
  var winNum = 99;
  var winCheck = 0;
  dynamic money = 500000;
  var len = money * 0.0001;
  var rng = Random();
  var win = chance / 5;
  for (var i = 1; i <= len; i++) {
    var rand = rng.nextInt(chance);
    if (winNum == rand) {
      winCheck++;
    }
    if (winCheck == 2 && winNum == rand) {
      money *= win;
      print('Выпало: $rand | Вы выйграли! Ваш счёт: $money тг.');
      money -= 10000;
      winCheck = 0;
    } else {
      money -= 10000;
      if (rand == winNum) {
        var fakeRand = rand+1;
        print(
            'Выпало: $fakeRand | К сожалению Вы проиграли! Ваш счёт: $money тг.');
      } else {
        print('Выпало: $rand | К сожалению Вы проиграли! Ваш счёт: $money тг.');
      }
    }
  }
}
