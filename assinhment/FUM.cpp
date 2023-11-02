#include <iostream>
using namespace std;

class MaxFinder {
private:
    int num1, num2;

public:
    MaxFinder(int a, int b) : num1(a), num2(b) {}

    friend int findMax(MaxFinder mf);
};

int findMax(MaxFinder mf) {
    return (mf.num1 > mf.num2) ? mf.num1 : mf.num2;
}

int main() {
    int num1, num2;
     cout<< "Enter the first number: ";
    cin >> num1;
	cout << "Enter the second number: ";
    cin >> num2;

    MaxFinder maxFinder(num1, num2);
    int result = findMax(maxFinder);

    cout << "The maximum number is: " << result <<endl;

    return 0;
}

