import UIKit

var peopleWithTickets: [String: String] = [
    "Person1": "10",
    "Person2": "11",
    "Person3": "12",
    "Person4": "13",
]

var ticketIDsForFlight781 = ["10", "11", "13", "25", "16", "13"]
var checkedPeopleForFlight781: [String] = []
var checkedInPeople: [String] = []

func checkIn(ticket: String) {
    for item in peopleWithTickets{
        if item.value == ticket {
            checkedInPeople.append(item.key)
            peopleWithTickets.removeValue(forKey: item.key)
            let indexOfTicket = ticketIDsForFlight781.firstIndex(of: item.value)
            if indexOfTicket != nil {
                checkedPeopleForFlight781.append(item.key)
            }
            return
        }
    }
    print("Not found")
}
checkIn(ticket: "10")
checkIn(ticket: "43")

print(checkedInPeople)
print(ticketIDsForFlight781.count - checkedPeopleForFlight781.count)
