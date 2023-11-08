import 'dart:io';

void main() {
  double num1, num2;
  int choice;

  do {
    print("\nMenu:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");

    stdout.write("Enter your choice (1-5): ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      print("Exiting the program. Goodbye!");
      break;
    }

    stdout.write("Enter the first number: ");
    num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the second number: ");
    num2 = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Result: ${num1 + num2}");
        break;
      case 2:
        print("Result: ${num1 - num2}");
        break;
      case 3:
        print("Result: ${num1 * num2}");
        break;
      case 4:
        if (num2 == 0) {
          print("Error: Division by zero");
        } else {
          print("Result: ${num1 / num2}");
        }
        break;
      default:
        print("Invalid choice. Please select a valid option (1-5).");
    }
  } while (choice != 5);
}
