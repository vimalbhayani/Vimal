#include <iostream>
using namespace std;

class Students {
protected:
    int rollNumber;

public:
    void inputRollNumber(int roll) {
        rollNumber = roll;
    }
};

class Test : public Students {
protected:
    int subject1Marks;
    int subject2Marks;

public:
    void inputTestMarks(int marks1, int marks2) {
        subject1Marks = marks1;
        subject2Marks = marks2;
    }
};

class Result : public Test {
public:
    int calculateTotalMarks() {
        return subject1Marks + subject2Marks;
    }

    void displayResult() {
        cout << "Roll Number: " << rollNumber << endl;
        cout << "Subject 1 Marks: " << subject1Marks << endl;
        cout << "Subject 2 Marks: " << subject2Marks << endl;
        cout << "Total Marks: " << calculateTotalMarks() << endl;
    }
};

int main() {
    Result studentResult;

    int roll, marks1, marks2;

    cout << "Enter Roll Number: ";
    cin >> roll;
    studentResult.inputRollNumber(roll);

    cout << "Enter Marks for Subject 1: ";
    cin >> marks1;
    cout << "Enter Marks for Subject 2: ";
    cin >> marks2;
    studentResult.inputTestMarks(marks1, marks2);

    cout << "Student Result:" << endl;
    studentResult.displayResult();

    return 0;
}

