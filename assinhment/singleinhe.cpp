#include <iostream>
#include <string>

using namespace std;

class Cricketer {
protected:
    string playerName;
    int playerID;

public:
    void inputData() {
        cout << "Enter Player Name: ";
        cin >> playerName;
        cout << "Enter Player ID: ";
        cin >> playerID;
    }
};

class Batsman : public Cricketer {
private:
    int totalRuns;
    double averageRuns;
    int bestPerformance;

public:
    void calculateAverageRuns() {
        cout << "Enter Total Runs: ";
        cin >> totalRuns;
        cout << "Enter Best Performance: ";
        cin >> bestPerformance;

        averageRuns = static_cast<double>(totalRuns) / bestPerformance;
    }

    void displayData() {
        cout << "Player Name: " << playerName << endl;
        cout << "Player ID: " << playerID << endl;
        cout << "Total Runs: " << totalRuns << endl;
        cout << "Average Runs: " << averageRuns << endl;
        cout << "Best Performance: " << bestPerformance << endl;
    }
};

int main() {
    Batsman batsman;

    batsman.inputData();
    batsman.calculateAverageRuns();
    batsman.displayData();

    return 0;
}

