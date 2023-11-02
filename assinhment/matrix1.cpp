#include <iostream>
#include <vector>
using namespace std;

class Matrix1D {
private:
    vector<int> data;

public:
    // Constructor to initialize the 1D matrix
    Matrix1D(const vector<int>& values) : data(values) {}

    // Overload the + operator for matrix addition
    Matrix1D operator+(const Matrix1D& other) const {
        if (data.size() != other.data.size()) {
            cerr << "Matrix dimensions must match for addition." << endl;
            return Matrix1D(vector<int>()); // Return an empty matrix in case of mismatch
        }

        vector<int> result(data.size());
        for (size_t i = 0; i < data.size(); i++) {
            result[i] = data[i] + other.data[i];
        }

        return Matrix1D(result);
    }

    // Display the matrix
    void display() const {
        for (int element : data) {
            cout << element << " ";
        }
        cout << endl;
    }
};

int main() {
    vector<int> matrix1Data = {1, 2, 3, 4, 5};
    vector<int> matrix2Data = {5, 4, 3, 2, 1};

    Matrix1D matrix1(matrix1Data);
    Matrix1D matrix2(matrix2Data);

    cout << "Matrix 1: ";
    matrix1.display();

    cout << "Matrix 2: ";
    matrix2.display();

    Matrix1D result = matrix1 + matrix2;

    cout << "Matrix 1 + Matrix 2: ";
    result.display();

    return 0;
}

