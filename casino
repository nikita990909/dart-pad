import 'dart:math';

void main() {
  var attempts = 13;
  double balance = 100000;
  var prisLos1 = 0.4;
  var prisLos2 = 0.8;
  var prisWin3 = 1.5;
  var prisWin4 = 3;
  var prisWin5 = 50;
  var rng = Random();
  var rand;
  var rand1 = 10;
  var rand2 = 80;
  var rand3 = 95;
  var rand4 = 98;
  var rand5 = 100;
  print('Начанаем игру | Изначальный баланс: ' +
      (balance.floor()).toString() +
      ' coin = ' +
      ((balance.floor()) / 10).toString() +
      'тг.');
  for (var i = 0; i < attempts; i++) {
    rand = rng.nextInt(100);
    if (rand <= rand1) {
      balance *= prisLos1;
      print((i + 1).toString() +
          ' попытка | Выпал коэф. $prisLos1  | Выпало: $rand');
    } else if (rand <= rand2) {
      balance *= prisLos2;
      print((i + 1).toString() +
          ' попытка | Выпал коэф. $prisLos2  | Выпало: $rand');
    } else if (rand <= rand3) {
      balance *= prisWin3;
      print((i + 1).toString() +
          ' попытка | Выпал коэф. $prisWin3  | Выпало: $rand');
    } else if (rand <= rand4) {
      balance *= prisWin4;
      print((i + 1).toString() +
          ' попытка | Выпал коэф. $prisWin4  | Выпало: $rand');
    } else if (rand == rand5) {
      balance *= prisWin5;
      print((i + 1).toString() +
          ' попытка | Выпал коэф. $prisWin5  | Выпало: $rand');
    }
  }
  print('Ваш текущий баланс: ' +
      (balance.floor()).toString() +
      ' coin = ' +
      ((balance.floor()) / 10).toString() +
      'тг.');
}
