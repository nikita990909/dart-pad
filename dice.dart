import 'dart:math';

void main() {
  var playerOne = [random(5), random(5), 10000];
  var playerTwo = [random(5), random(5), 10000];
  var str = '';
  print('1: ' +
      playerOne[0].toString() +
      ' | ' +
      playerOne[1].toString() +
      '\n2: ' +
      playerTwo[0].toString() +
      ' | ' +
      playerTwo[1].toString());
  if (playerOne[0] == playerOne[1] && playerTwo[0] != playerTwo[1]) {
    playerOne[2] += playerTwo[2];
    playerTwo[2] -= playerTwo[2];
    str += 'Выиграл игрок под номером 1 выбросив Куш!\nБаланс игрока 1: ' +
        playerOne[2].toString();
  } else if (playerTwo[0] == playerTwo[1] && playerOne[0] != playerOne[1]) {
    playerTwo[2] += playerOne[2];
    playerOne[2] -= playerOne[2];
    str += 'Выиграл игрок под номером 2 выбросив Куш!\nБаланс игрока 2: ' +
        playerTwo[2].toString();
  } else {
    if (playerOne[0] + playerOne[1] > playerTwo[0] + playerTwo[1]) {
      playerOne[2] += playerTwo[2];
      playerTwo[2] -= playerTwo[2];
      str += 'Выиграл игрок под номером 1!\nБаланс игрока 1: ' +
          playerOne[2].toString();
    } else if (playerOne[0] + playerOne[1] < playerTwo[0] + playerTwo[1]) {
      playerTwo[2] += playerOne[2];
      playerOne[2] -= playerOne[2];
      str += 'Выиграл игрок под номером 2!\nБаланс игрока 2: ' +
          playerTwo[2].toString();
    } else {
      str += 'Ничья!';
    }
  }
  print(str);
}

int random(int n) => Random().nextInt(n) + 1;
