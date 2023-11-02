#include <iostream>
#include <string>

using namespace std;

class Person {
protected:
    string name;
    int age;

public:
    void initializePerson(const string& n, int a) {
        name = n;
        age = a;
    }

    void readPersonData() {
        cout << "Enter Name: ";
        cin >> name;
        cout << "Enter Age: ";
        cin >> age;
    }

    void displayPersonData() {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};

class Student {
protected:
    float percentage;

public:
    void initializeStudent(float p) {
        percentage = p;
    }

    void readStudentData() {
        cout << "Enter Percentage: ";
        cin >> percentage;
    }

    void displayStudentData() {
        cout << "Percentage: " << percentage << "%" << endl;
    }
};

class Teacher : public Person, public Student {
private:
    double salary;

public:
    void initializeTeacher(double s) {
        salary = s;
    }

    void readTeacherData() {
        cout << "Enter Salary: ";
        cin >> salary;
    }

    void displayTeacherData() {
        displayPersonData();
        displayStudentData();
        cout << "Salary: $" << salary << endl;
    }
};

int main() {
    Teacher teacher;
    string name;
    int age;
    float percentage;
    double salary;

    cout << "Enter Teacher's Information:" << endl;
    teacher.readPersonData();
    teacher.readStudentData();
    teacher.readTeacherData();

    cout << "\nTeacher's Information:" << endl;
    teacher.displayTeacherData();

    return 0;
}

