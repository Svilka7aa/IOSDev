import UIKit

func calculteFuelConsumptionForHundredKM(liters: Double, distance: Double) -> Double {
    var averageFuelConsumption = (liters * 100) / distance
    return averageFuelConsumption
    }
    
struct car {
    var currentFuel: Int
    var currentDistance: Int
    var dateOfRefueling: String
}

var BMW = car(currentFuel: 0, currentDistance: 0, dateOfRefueling: "")

func refuelCar(fuel: String, distance: String, date: String) {
    BMW.currentFuel += Int(fuel)!
    BMW.currentDistance += Int(distance)!
    BMW.dateOfRefueling = date
}

refuelCar(fuel: "45", distance: "657", date: "14-03-2023")

    
    func convertLitersPerKMToMilesPerGalon(liters: Double) ->Double {
        let MPG = 235.215/liters
        return MPG
    }


    func priceForAKilometer(liters: Double, distance: Double, price: Double) -> Double {
        let averageFuelConsumption = calculteFuelConsumptionForHundredKM(liters: liters, distance: distance)
        print(averageFuelConsumption)
        let priceForOneKilometer = (averageFuelConsumption * price) / 100
        return priceForOneKilometer
    }


func printInfo(){
    let fuelConsumption = (calculteFuelConsumptionForHundredKM(liters: 20.0, distance: 230.0))
    print("Fuel consumption: \(fuelConsumption)")
    print("Date of fueling: \(BMW.dateOfRefueling)")
}

printInfo()
