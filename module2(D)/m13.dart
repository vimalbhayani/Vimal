import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the third number: ");
  double num3 = double.parse(stdin.readLineSync()!);

  double maxNumber;

  if (num1 >= num2) {
    if (num1 >= num3) {
      maxNumber = num1;
    } else {
      maxNumber = num3;
    }
  } else {
    if (num2 >= num3) {
      maxNumber = num2;
    } else {
      maxNumber = num3;
    }
  }

  print("The maximum number is: $maxNumber");
}
