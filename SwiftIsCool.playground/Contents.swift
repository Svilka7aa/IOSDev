import UIKit


//struct Student {
//    let name: String
//    let facultyNumber: String
//    let studentAge: Int
//    let grade1: Double
//    let grade2: Double
//    let grade3: Double
//}
//
//func getAverageGrade(student: Student) -> Double {
//    let result = (student.grade1 + student.grade2 + student.grade3) / 3
//    return result
//}
//
//let student1 = Student(name: "Georgi",
//                       facultyNumber: "123",
//                       studentAge: 24,
//                       grade1: 5.67,
//                       grade2: 5.73,
//                       grade3: 5.50)
//
//let student2 = Student(name: "Ivelina",
//                       facultyNumber: "123",
//                       studentAge: 24,
//                       grade1: 5.7,
//                       grade2: 4.6,
//                       grade3: 5.5)
//
//let student3 = Student(name: "Maria",
//                       facultyNumber: "123",
//                       studentAge: 24,
//                       grade1: 5.67,
//                       grade2: 4.23,
//                       grade3: 5.50)
//
//
//func getBestStudent(student1: Student,
//                    student2: Student,
//                    student3: Student)
//-> String {
//    var bestStudent: Student = student1
//    var bestGrade: Double = getAverageGrade(student: student1)
//
//    if bestGrade < getAverageGrade(student: student2){
//        bestStudent = student2
//        bestGrade = getAverageGrade(student: student2)
//    }
//
//    if bestGrade < getAverageGrade(student: student3){
//        bestStudent = student3
//        bestGrade = getAverageGrade(student: student2)
//    }
//
//    return bestStudent.name
//}
//
//print(getBestStudent(student1: student1,
//                     student2: student2,
//                     student3: student3)
//)
//


//Calculate Surface of triangle with a side and a heighth of the side
//func getSurface(sideA: Float, heightSideA: Float) -> Float {
//    let surface = (sideA * heightSideA)/2
//    return surface
//}
//
//print(getSurface(sideA: 6.1, heightSideA: 2.5))



func calculateSurfaseAndPerimeter(radius: Float) -> Float {
    let pi: Float = 3.14
    let perimeter = 2 * pi * radius
    let surface = pi * (radius * radius)
    return surface
    
}

print(calculateSurfaseAndPerimeter(radius: 7.0))
