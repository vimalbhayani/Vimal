import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("Factorial is not defined for negative numbers.");
  } else {
    int factorial = 1;

    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }

    print("Factorial of $number is: $factorial");
  }
}
