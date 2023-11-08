import 'dart:io';

void main() {
  int rows = 5;

  for (int i = 1; i <= rows; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      if (j % 2 == 0) {
        line += '0';
      } else {
        line += '1';
      }
    }
    print(line);
  }
}

