#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

double add(double a, double b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}

double subtract(double a, double b) {
    return a - b;
}

int multiply(int a, int b) {
    return a * b;
}

double multiply(double a, double b) {
    return a * b;
}

double divide(double a, double b) {
    if (b != 0) {
        return a / b;
    } else {
        cout << "Division by zero is not allowed." << endl;
        return 0.0;  // Default value in case of division by zero
    }
}

int main() {
    int intNum1, intNum2;
    double doubleNum1, doubleNum2;
    int choice;

    cout << "Select an operation:" << endl;
    cout << "1. Addition" << endl;
    cout << "2. Subtraction" << endl;
    cout << "3. Multiplication" << endl;
    cout << "4. Division" << endl;
    cout << "Enter your choice (1-4): ";
    cin >> choice;

    switch (choice) {
        case 1:
            cout << "Enter two numbers: ";
            cin >> intNum1 >> intNum2;
            cout << "Result: " << add(intNum1, intNum2) << endl;
            break;
        case 2:
            cout << "Enter two numbers: ";
            cin >> intNum1 >> intNum2;
            cout << "Result: " << subtract(intNum1, intNum2) << endl;
            break;
        case 3:
            cout << "Enter two numbers: ";
            cin >> intNum1 >> intNum2;
            cout << "Result: " << multiply(intNum1, intNum2) << endl;
            break;
        case 4:
            cout << "Enter two numbers: ";
            cin >> doubleNum1 >> doubleNum2;
            cout << "Result: " << divide(doubleNum1, doubleNum2) << endl;
            break;
        default:
            cout << "Invalid choice." << endl;
            break;
    }

    return 0;
}

