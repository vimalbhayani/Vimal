#include <iostream>
#include <string>

using namespace std;

class BankAccount {
private:
    string depositorName;
    long accountNumber;
    char accountType;
    double balance;

public:
    void assignValues(const string& name, long accNumber, char accType, double initialBalance) {
        depositorName = name;
        accountNumber = accNumber;
        accountType = accType;
        balance = initialBalance;
    }

    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            cout << "Deposit of ?" << amount << " successful." << endl;
        } else {
            cout << "Invalid deposit amount." << endl;
        }
    }

    void withdraw(double amount) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount;
                cout << "Withdrawal of ?" << amount << " successful." << endl;
            } else {
                cout << "Insufficient balance. Withdrawal failed." << endl;
            }
        } else {
            cout << "Invalid withdrawal amount." << endl;
        }
    }

    void display() {
        cout << "Account Information:" << endl;
        cout << "Name of Depositor: " << depositorName << endl;
        cout << "Account Number: " << accountNumber << endl;
        cout << "Type of Account: " << accountType << endl;
        cout << "Balance: ?" << balance << endl;
    }
};

int main() {
    BankAccount myAccount;
    string name;
    long accountNumber;
    char accountType;
    double initialBalance;

    cout << "Enter name of depositor: ";
    cin >> name;
    cout << "Enter account number: ";
    cin >> accountNumber;
    cout << "Enter account type (S for savings, C for checking): ";
    cin >> accountType;
    cout << "Enter initial balance: ";
    cin >> initialBalance;

    myAccount.assignValues(name, accountNumber, accountType, initialBalance);

    myAccount.display();

    double depositAmount, withdrawalAmount;
    cout << "Enter amount to deposit: ";
    cin >> depositAmount;
    myAccount.deposit(depositAmount);

    cout << "Enter amount to withdraw: ";
    cin >> withdrawalAmount;
    myAccount.withdraw(withdrawalAmount);

    myAccount.display();

    return 0;
}

