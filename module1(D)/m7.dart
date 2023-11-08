import 'dart:io';

void main() {
  stdout.write("Enter temperature in degrees Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = convertCelsiusToFahrenheit(celsius);

  print("Temperature in Fahrenheit: $fahrenheit°F");
}

double convertCelsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
