#include <iostream>
using namespace std;

class NumberSwapper;

class Number {
public:
    int value;

public:
    Number(int num) : value(num) {}

    friend void swapNumbers(Number &num1, Number &num2);
};

void swapNumbers(Number &num1, Number &num2) {
    num1.value = num1.value + num2.value;
    num2.value = num1.value - num2.value;
    num1.value = num1.value - num2.value;
}

int main() {
    int num1, num2;

   cout << "Enter the first number: ";
	cin >> num1;
    cout << "Enter the second number: ";
    cin >> num2;

    Number number1(num1);
    Number number2(num2);

   cout << "Before swapping: num1 = " << number1.value << ", num2 = " << number2.value << endl;

    swapNumbers(number1, number2);

    cout << "After swapping: num1 = " << number1.value << ", num2 = " << number2.value << endl;

    return 0;
}

