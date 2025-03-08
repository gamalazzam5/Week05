class Board {
// List to display the number to move acroos him
  List<List<String>> grid = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9']
  ];

  void display() {
    print(" Tic-Tac-Toe Board \n");
    for (var row in grid) {
      print(" ${row[0]} | ${row[1]} | ${row[2]} ");
      if (row != grid.last) print("----------");
    }
    print("");
  }

  bool updateBoard(String choice, String symbol) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (grid[i][j] == choice) {
          grid[i][j] = symbol;
          return true;
        }
      }
    }
    return false;
  }

  bool checkWin(String symbol) {
    for (int i = 0; i < 3; i++) {
      if ((grid[i][0] == symbol &&
              grid[i][1] == symbol &&
              grid[i][2] == symbol) ||
          (grid[0][i] == symbol &&
              grid[1][i] == symbol &&
              grid[2][i] == symbol)) {
        return true;
      }
    }
    // Diagonals
    if ((grid[0][0] == symbol &&
            grid[1][1] == symbol &&
            grid[2][2] == symbol) ||
        (grid[0][2] == symbol &&
            grid[1][1] == symbol &&
            grid[2][0] == symbol)) {
      return true;
    }
    return false;
  }

  bool isDraw() {
    for (var row in grid) {
      for (var cell in row) {
        if (cell != 'X' && cell != 'O') return false;
      }
    }
    return true;
  }
}
