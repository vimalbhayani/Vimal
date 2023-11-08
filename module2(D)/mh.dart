import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int sum = findSumOfDigits(number);

  print("The summation of the digits in $number is $sum");
}

int findSumOfDigits(int number) {
  int sum = 0;
  number = number.abs(); // Ensure we work with the absolute value

  while (number > 0) {
    int digit = number % 10;
    sum += digit;
    number ~/= 10;
  }

  return sum;
}
