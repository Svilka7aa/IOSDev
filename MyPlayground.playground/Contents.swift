import UIKit

//var sideA: Int = 6
//var sideB: Double = 8.0
//
//var perimeter: Double = 2*Double(sideA) + 2*sideB
//var surface: Double = Double(sideA) * sideB
//
//print("Perimeter: \(perimeter)")
//print("Surface: \(surface)")
//
//print(sideA.distance(to: 10))

//var number:Double = 3.141592
//let pi = Double.pi
//
//var string = "Hello"
//string += " World"
//print(string)

//let name = "Georgi"
//let facultyNumber = "12121212"
//let studentAge = 21
//let averageMark = 4.786
//
//let result = "\(name),\(facultyNumber),\(studentAge),\(averageMark)"
//print(result)
//
//print(name, facultyNumber, studentAge, averageMark, separator: ",")
//
//let description2 = String(format: "%@,%@,%d,%0.3f", name, facultyNumber, studentAge, averageMark)
//
//print(description2)

//struct Student {
//    let name: String
//    let facultyNumber: String
//    let studentAge: Int
//    let averageMark: Double
//}
//
//let name = "Georgi"
//let facultyNumber = "1211212"
//let studentAge = 1
//let averageMark = 5.786
//
//let student1 = Student(name: "Georgi", facultyNumber: "213123", studentAge: 21, averageMark: 5.786)
//
//print(student1)
//
//print(student1.name)


//homework task 1
//func calculationSurface(sideA: Float, height: Float) -> Float{
//    let result = (sideA * height) / 2
//    return result
//}
//
//print(calculationSurface(sideA: 4.2, height: 6.3))

//Homework task 2
//func calculatePerimeterAndRadiusCircle(radius: Float) -> Float {
//    let pi = Double.pi
//    let perimeter = 2*Float(pi)*radius
//    let surface = Float(pi)*(radius*radius)
//    return surface
//}
//
//print(calculatePerimeterAndRadiusCircle(radius: 5))


//Homework task 3
//struct Car {
//    let make: String
//    let model: String
//    let horsePower: Double
//    let torrque: Double
//    let dateOfManufacturing: String
//}
//
//let car1 = Car(make: "BMW", model: "318i", horsePower: 147.0, torrque: 179.0, dateOfManufacturing: "2010")
//
//func carDescription(car: Car) -> String{
//    let description = "\(car.make),\(car.model),\(car.horsePower),\(car.torrque),\(car.dateOfManufacturing)"
//    return description
//}
//
//print(carDescription(car: car1))
//
//func powerInWatts(car: Car) -> Int{
//    let watts: Int = Int(car.horsePower * 746)
//    return watts
//}
//
//print(powerInWatts(car: car1))

//struct Student {
//    let name: String
//    let facultyNumber: String
//    let studentAge: Int
//    let mark1: Double
//    let mark2: Double
//    let mark3: Double
//}
//
//func average(student: Student) -> Double{
//    let result = (student.mark1 + student.mark2 + student.mark3) / 3
//    return result
//}
//
//let student2 = Student(name: "Svilen",
//                       facultyNumber: "6675",
//                       studentAge: 21,
//                       mark1: 3.5,
//                       mark2: 2,
//                       mark3: 5.5
//)
//
//let student3 = Student(name: "Georgi",
//                       facultyNumber: "12423",
//                       studentAge: 21,
//                       mark1: 3.5,
//                       mark2: 4,
//                       mark3: 5
//)
//
//let student1 = Student(name: "Paulina",
//                       facultyNumber: "1234",
//                       studentAge: 21,
//                       mark1: 4.5,
//                       mark2: 5,
//                       mark3: 5.25
//)
//
//func getBestStudent(student1: Student,
//                    student2: Student,
//                    student3: Student) -> String {
//    
//    var bestStudent: Student = student1
//    var bestScore: Double = average(student: student1)
//    
//    if bestScore < average(student: student2) {
//        bestStudent = student2
//        bestScore = average(student: student2)
//    }
//    
//    if bestScore < average(student: student3) {
//        bestStudent = student3
//        bestScore = average(student: student3)
//    }
//    
//        return bestStudent.name
//}
//
//print(getBestStudent(student1: student1,
//                     student2: student2,
//                     student3: student3))

