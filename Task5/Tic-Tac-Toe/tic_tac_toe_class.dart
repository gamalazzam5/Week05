import 'dart:io';

import 'board_class.dart';
import 'player_class.dart';

class TicTacToe {
  Board board = Board();
  late Player player1;
  late Player player2;
  late Player currentPlayer;

  void startGame() {
    print(" Welcome to Tic-Tac-Toe CLI! \n");

    stdout.write("Enter Player 1 name: ");
    String p1Name = stdin.readLineSync()!;
    player1 = Player(p1Name, "X");

    stdout.write("Enter Player 2 name: ");
    String p2Name = stdin.readLineSync()!;
    player2 = Player(p2Name, "O");

    currentPlayer = player1;
    playGame();
  }

  void playGame() {
    while (true) {
      board.display();
      stdout.write(
          "🎲 ${currentPlayer.name} (${currentPlayer.symbol}), enter your move (1-9): ");
      String move = stdin.readLineSync()!;

      if (!board.updateBoard(move, currentPlayer.symbol)) {
        print(" Invalid move! Try again.");
        continue;
      }

      if (board.checkWin(currentPlayer.symbol)) {
        board.display();
        print(" ${currentPlayer.name} wins the game! ");
        break;
      }

      if (board.isDraw()) {
        board.display();
        print(" It's a draw! Well played.");
        break;
      }

      currentPlayer = (currentPlayer == player1) ? player2 : player1;
    }
  }
}
