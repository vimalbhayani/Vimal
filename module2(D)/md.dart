import 'dart:io';

void main() {
  stdout.write("Enter the number of terms for the Fibonacci series: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("Please enter a positive number of terms.");
  } else {
    print("Fibonacci series with $n terms:");
    printFibonacciSeries(n);
  }
}

void printFibonacciSeries(int n) {
  int first = 0;
  int second = 1;
  int next;

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      next = i;
    } else {
      next = first + second;
      first = second;
      second = next;
    }
    print(next);
  }
}
