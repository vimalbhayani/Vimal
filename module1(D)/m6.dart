import 'dart:io';

void main() {
  stdout.write("Enter the principal amount: ");
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the annual interest rate (as a percentage): ");
  double interestRate = double.parse(stdin.readLineSync()!) / 100;

  stdout.write("Enter the time (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * interestRate * time);
  print("Simple Interest: $simpleInterest");
}
