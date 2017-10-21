//: Playground - noun: a place where people can play

import UIKit

class Student{
     var name: String
     var age: Int
     var marks = [Int]()
    
    init(name:String, age:Int, marks:[Int]){
        self.name = name;
        self.age = age
        self.marks = marks
    }
}

var s1 = Student(name: "Mohsin", age: 20, marks: [60,95,85,75,96])
var s2 = Student(name: "Hamza", age: 18, marks: [70,75,85,75,96])
var s3 = Student(name: "Ali", age: 22, marks: [60,55,65,95,50])
var s4 = Student(name: "Arbaz", age: 25, marks: [65,75,85,75,60])
var s5 = Student(name: "Afzal", age: 16, marks: [90,75,99,50,95])
var s6 = Student(name: "Hammad", age: 19, marks: [90,70,65,75,55])
var s7 = Student(name: "Shehbaz", age: 17, marks: [54,76,70,60,50])
var s8 = Student(name: "Shehroz", age: 20, marks: [66,74,81,79,40])
var s9 = Student(name: "Shehzad", age: 21, marks: [65,75,90,75,96])

var students = [s1,s2,s3,s4,s5,s6,s7,s8,s9]

//var getAge = {(student:Student)->Int in
//    return student.age
//}

var ages = students.map({$0.age}) //$0 = students[0]
print("Student Ages = \(ages)\n")


var studentsDict = [String : Int]()
for student in students{
    var per = student.marks.reduce(0,{$0 + $1}) * 100 / 500;
    studentsDict[student.name] = per
}
let bestStudents = studentsDict.filter({ $0.value > 80 })
for student in bestStudents{
    print("\(student.key) = \(student.value)%")
}

var names = students.map({$0.name})
var sortedNames = names.sorted()
print("\nSorted Names = \(sortedNames)\n")

var getInfo = {(student:Student)->(name:String,marks:Int) in
    return (name:student.name,marks:student.marks.reduce(0, {$0+$1}))
}

var reduceStudentRecord = students.map(getInfo)

for student in reduceStudentRecord{
    print("\(student.name), Total Marks = \(student.marks)")
}







