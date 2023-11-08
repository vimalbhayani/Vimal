import 'dart:io';

void main() {
  int rows = 5; // The number of rows in the pattern
  for (int i = 1; i <= rows; i++) {
    // Print leading spaces
    for (int j = rows; j > i; j--) {
      stdout.write(' ');
    }
    
    // Print numbers for the current row
    for (int k = 1; k <= i; k++) {
      stdout.write('$i ');
    }
    
    print(''); // Move to the next line after each row
  }
}
