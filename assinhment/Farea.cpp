#include <iostream>
#include <cmath>
using namespace std;


class AreaCalculator {
public:
    double calculateArea(double length, double breadth) {
        return length * breadth;
    }

    double calculateArea(double base, double height, char shape) {
        if (shape == 'T' || shape == 't') return 0.5 * base * height;
        return 0.0;
    }

    double calculateArea(double radius, char shape) {
        if (shape == 'C' || shape == 'c') return M_PI * radius * radius;
        return 0.0;
    }
};

int main() {
    AreaCalculator calculator;
    char shape;
    std::cout << "Enter shape (R for rectangle, T for triangle, C for circle): ";
    std::cin >> shape;

    if (shape == 'R' || shape == 'r') {
        double length, breadth;
        cout << "Enter length and breadth: ";
        cin >> length >> breadth;
       cout << "Area of rectangle: " << calculator.calculateArea(length, breadth) << endl;
    } else if (shape == 'T' || shape == 't') {
        double base, height;
        cout << "Enter base and height: ";
        cin >> base >> height;
        cout << "Area of triangle: " << calculator.calculateArea(base, height, shape) << endl;
    } else if (shape == 'C' || shape == 'c') {
        double radius;
        cout << "Enter radius: ";
        cin >> radius;
        cout << "Area of circle: " << calculator.calculateArea(radius, shape) << endl;
    } else {
        cout << "Invalid shape identifier. Please enter R, T, or C." << endl;
    }

    return 0;
}

