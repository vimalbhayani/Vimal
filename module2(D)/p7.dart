import 'dart:io';

void main() {
    int rows = 5;
    int N = 1;

    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= i; j++) {
            stdout.write('$N '); // Use string interpolation
            N++;
        }
        print(''); // Move to the next line after each row
    }
}
