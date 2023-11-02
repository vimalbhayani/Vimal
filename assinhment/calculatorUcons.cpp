#include <iostream>
using namespace std;

class Calculator {
private:
    double num1;
    double num2;

public:
    Calculator(double a, double b) {
        num1 = a;
        num2 = b;
    }

    double add() {
        return num1 + num2;
    }

    double subtract() {
        return num1 - num2;
    }

    double multiply() {
        return num1 * num2;
    }

    double divide() {
        if (num2 != 0) {
            return num1 / num2;
        } else {
            cerr << "Division by zero is not allowed." << endl;
            return 0;  
        }
    }
};

int main() {
    double a, b;

    cout << "Enter the first number: ";
    cin >> a;
    cout << "Enter the second number: ";
    cin >> b;

    Calculator calculator(a, b);

    cout << "Addition result: " << calculator.add() << endl;
    cout << "Subtraction result: " << calculator.subtract() << endl;
    cout << "Multiplication result: " << calculator.multiply() << endl;
    cout << "Division result: " << calculator.divide() << endl;

    return 0;
}

