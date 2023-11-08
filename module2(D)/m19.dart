import 'dart:io';
import 'dart:math';

void main() {
  int choice;

  do {
    print("\nMenu:");
    print("1. Calculate the area of a Triangle");
    print("2. Calculate the area of a Rectangle");
    print("3. Calculate the area of a Circle");
    print("4. Exit");

    stdout.write("Enter your choice (1-4): ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 4) {
      print("Exiting the program. Goodbye!");
      break;
    }

    if (choice < 1 || choice > 4) {
      print("Invalid choice. Please select a valid option (1-4).");
      continue;
    }

    double area;

    if (choice == 1) {
      double base, height;
      stdout.write("Enter the base of the triangle: ");
      base = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the height of the triangle: ");
      height = double.parse(stdin.readLineSync()!);
      area = 0.5 * base * height;
    } else if (choice == 2) {
      double length, width;
      stdout.write("Enter the length of the rectangle: ");
      length = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the width of the rectangle: ");
      width = double.parse(stdin.readLineSync()!);
      area = length * width;
    } else if (choice == 3) {
      double radius;
      stdout.write("Enter the radius of the circle: ");
      radius = double.parse(stdin.readLineSync()!);
      area = pi * pow(radius, 2);
    }

    print("The area is: $area");
  } while (choice != 4);
}
