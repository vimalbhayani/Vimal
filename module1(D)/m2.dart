import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double firstNumber = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double secondNumber = double.parse(stdin.readLineSync()!);

  double sum = firstNumber + secondNumber;
  double difference = firstNumber - secondNumber;
  double product = firstNumber * secondNumber;

  if (secondNumber != 0) {
    double division = firstNumber / secondNumber;
    print("Sum: $sum");
    print("Difference: $difference");
    print("Product: $product");
    print("Division: $division");
  } else {
    print("Sum: $sum");
    print("Difference: $difference");
    print("Product: $product");
    print("Division by zero is undefined.");
  }
}
