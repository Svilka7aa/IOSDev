import UIKit

class Veichle {
    let regNumber: String
    let engine: Float
    var hps: Float
    let VIN: String
    
    init(regNumber: String,
         engine: Float,
         hps:Float,
         VIN:String) {
        self.regNumber = regNumber
        self.engine = engine
        self.hps = hps
        self.VIN = VIN
    }
    
    func getFreewaySpeedLimit() -> Double {
         
    }
}

class Car: Veichle {
    let numberOfSeats: Int
    
    init(regNumber: String, engine: Float, hps: Float, VIN: String, numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
        super.init(regNumber: regNumber, engine: engine, hps: hps, VIN: VIN)
    }
}

let mazda = Car(regNumber: "v9118sv", engine: 2.0, hps: 180, VIN: "sadasfd23432", numberOfSeats: 4)

print(mazda.regNumber)

