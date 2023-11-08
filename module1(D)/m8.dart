import 'dart:io';

void main() {
  // Initialize variables for total marks and subjects
  double totalMarks = 0.0;
  int numberOfSubjects = 5;

  // Prompt the user to enter marks for each subject
  for (int i = 1; i <= numberOfSubjects; i++) {
    stdout.write("Enter marks for Subject $i: ");
    double marks = double.parse(stdin.readLineSync()!);
    totalMarks += marks;
  }

  // Calculate the percentage
  double percentage = (totalMarks / (numberOfSubjects * 100)) * 100;

  // Display the total marks and percentage
  print("Total Marks: $totalMarks");
  print("Percentage: $percentage%");
}
