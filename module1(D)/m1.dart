import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String yourName = stdin.readLineSync()!;

  stdout.write("Enter your birth date: ");
  String yourBirthDate = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int yourAge = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your address: ");
  String yourAddress = stdin.readLineSync()!;

  print("Name: $yourName");
  print("Birth Date: $yourBirthDate");
  print("Age: $yourAge");
  print("Address: $yourAddress");
}
