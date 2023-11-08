import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int sum = sumFirstAndLastDigit(number);

  print("The summation of the first and last digits in $number is $sum");
}

int sumFirstAndLastDigit(int number) {
  int lastDigit = number % 10;
  int firstDigit;

  number = number.abs(); // Ensure we work with the absolute value

  while (number >= 10) {
    number ~/= 10;
  }
  firstDigit = number;

  return firstDigit + lastDigit;
}
