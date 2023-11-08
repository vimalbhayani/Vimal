import 'dart:io';

void main() {
  int totalSubjects = 5;
  double totalMarks = 0;

  for (int i = 1; i <= totalSubjects; i++) {
    stdout.write("Enter marks for Subject $i: ");
    double subjectMarks = double.parse(stdin.readLineSync()!);
    totalMarks += subjectMarks;
  }

  double percentage = (totalMarks / (totalSubjects * 100)) * 100;

  print("Total Marks: $totalMarks");
  print("Percentage: $percentage%");

  if (percentage > 75) {
    print("Distinction");
  } else if (percentage > 60 && percentage <= 75) {
    print("First class");
  } else if (percentage > 50 && percentage <= 60) {
    print("Second class");
  } else if (percentage > 35 && percentage <= 50) {
    print("Pass class");
  } else {
    print("Fail");
  }
}
