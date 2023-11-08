import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter the radius of the circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  double area = calculateCircleArea(radius);

  print("The area of the circle with radius $radius is: $area");
}

double calculateCircleArea(double radius) {
  return pi * radius * radius;
}
