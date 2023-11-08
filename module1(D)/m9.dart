import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double A = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double B = double.parse(stdin.readLineSync()!);

  print("Before swapping: ");
  print("First number: $A");
  print("Second number: $B");

  A = A + B;
  B = A - B;
  A = A - B;

  print("\nAfter swapping: ");
  print("First number: $A");
  print("Second number: $B");
}
