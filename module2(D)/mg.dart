import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int maxDigit = findMaxDigit(number);

  print("The maximum digit in $number is $maxDigit");
}

int findMaxDigit(int number) {
  int maxDigit = 0;
  number = number.abs(); // Ensure we work with the absolute value

  while (number > 0) {
    int digit = number % 10;
    if (digit > maxDigit) {
      maxDigit = digit;
    }
    number ~/= 10;
  }

  return maxDigit;
}
