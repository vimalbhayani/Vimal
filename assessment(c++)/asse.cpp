#include <iostream>
#include <cmath>  
using namespace std;

const double CostPerHour = 18.50;
const double CostPerMinute = 0.40;
const double CostOfDinner = 20.70;

class Event {
private:
    string eventName;
    string firstName;
    string lastName;
    int numGuests;
    int numMinutes;
    int numServers;

public:
    Event() {
        numServers = 0; 
    }

    void inputEventDetails() {
        cout << "Enter the NAME OF THE EVENT: ";
        cin.ignore(); 
        getline(cin, eventName);
        cout << "Enter your FIRST NAME: ";
        cin >> firstName;
        cout << "Enter your LAST NAME: ";
        cin >> lastName;
        cout << "Enter the Number of Guests: ";
        cin >> numGuests;
        cout << "Enter the Number of Minutes: ";
        cin >> numMinutes;
    }

    void calculateEventCost() {
        numServers = ceil(static_cast<double>(numGuests) / 20.0);

        double cost1 = (numMinutes / 60.0) * CostPerHour;
        double cost2 = (numMinutes % 60) * CostPerMinute;
        double costForOneServer = cost1 + cost2;

        double totalFoodCost = numGuests * CostOfDinner;
        double averageCost = totalFoodCost / numGuests;
        double totalCost = totalFoodCost + (costForOneServer * numServers);
        double depositAmount = totalCost * 0.25;

        cout << "\nEvent Details:" << endl;
        
        cout << "Event Name: " << eventName << endl;
        
        cout << "Organizer: " << firstName << " " << lastName << endl;
        
        cout << "Number of Guests: " << numGuests << endl;
        
        cout << "Number of Servers Required: " << numServers << endl;
        
        cout << "Total Cost of Food: $" << totalFoodCost << endl;
        
        cout << "Average Cost Per Person: $" << averageCost << endl;
        
        cout << "Total Event Cost: $" << totalCost << endl;
        
        cout << "Deposit Amount (25% of Total Cost): $" << depositAmount << endl;
    }
};

int main() {
    Event event;
    event.inputEventDetails();
    event.calculateEventCost();
    return 0;
}

