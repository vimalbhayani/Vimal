import 'dart:io';

void main() {
  stdout.write("Enter a number to generate its multiplication table: ");
  int number = int.parse(stdin.readLineSync()!);

  print("Multiplication table for $number:");

  printMultiplicationTable(number);
}

void printMultiplicationTable(int number) {
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}
