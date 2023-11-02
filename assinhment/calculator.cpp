#include <iostream>
using namespace std;

class Calculator {
public:
    float add(float a, float b) { return a + b; }
    float subtract(float a, float b) { return a - b; }
    float multiply(float a, float b) { return a * b; }
    float divide(float a, float b) { return (b != 0) ? a / b : 0; }
};

int main() {
    Calculator calc;
    char op;
    float num1, num2;

    while (true) {
        cout << "Enter operator (+, -, *, /) or 'Q' to quit: ";
        cin >> op;
        if (op == 'Q') break;
        cout << "Enter two numbers: ";
        cin >> num1 >> num2;

        switch (op) {
            case '+': cout << "Result: " << calc.add(num1, num2) << endl; break;
            case '-': cout << "Result: " << calc.subtract(num1, num2) << endl; break;
            case '*': cout << "Result: " << calc.multiply(num1, num2) << endl; break;
            case '/':
                if (num2 != 0)
                    cout << "Result: " << calc.divide(num1, num2) << endl;
                else
                    cout << "Cannot divide by zero." << endl;
                break;
            default: cout << "Invalid operator." << endl;
        }
    }

    return 0;
}

