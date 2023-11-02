#include <iostream>
using namespace std;


inline double multiply(double a, double b) {
    return a * b;
}

inline double cube(double a) {
    return a * a * a;
}

int main() {
    double num1, num2;

    cout << "Enter two numbers for multiplication: ";
    cin >> num1 >> num2;

    double product = multiply(num1, num2);

    cout << "Multiplication result: " << product << std::endl;

    double num3;

    cout << "Enter a number for cubic calculation: ";
    cin >> num3;

    double result = cube(num3);

    cout << "Cubic result: " << result << std::endl;

    return 0;
}

