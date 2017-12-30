//
//  school.swift
//  Swift Practice
//
//  Created by UCode on 12/30/17.
//  Copyright © 2017 Jacob. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible {
    
    
    
    var name: String
    var age: Int
    var gender: String
    
    var description: String {
        return "\(name) (\(age), \(gender))"
    }
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
}

class Student: Person {
    
    var StudentID: Int
    var School: String
    var Grade: Int
    
    override var description: String {
        return "\(name) (\(age), \(gender), \(StudentID), \(School), \(Grade))"
    }
    
    init(name: String, age: Int, gender: String, StudentID: Int, School: String, Grade: Int) {
        self.StudentID = StudentID
        self.School = School
        self.Grade = Grade
        super.init(name: name, age: age, gender: gender)
    }
}

class Teacher: Person {
    
    var coolness: Float
    
    override var description: String {
        return "\(name) (\(age), \(gender), \(coolness)"
    }
    
    init(name: String, age: Int, gender: String, coolness: Float) {
        self.coolness = coolness
        super.init(name: name, age: age, gender: gender)
    }
}

class Class : CustomStringConvertible {
    
    let teacher : Teacher
    let students: [Student]
    
    
    var description: String {
        return "\(teacher.name) has 5 student(s)"
        
    }
    
    init(teacher: Teacher, students: [Student]) {
        self.teacher = teacher
        self.students = students
    }
    
}

func schoolProgram() {
    
    let myPerson = Person(name: "Jacob", age: 14, gender: "Male")
    print(myPerson)
    
    let myStudent = Student(name: "Bob", age: 18, gender: "Male", StudentID: 483923, School: "aaa", Grade: 80)

    
    let myStudent1 = Student(name: "Jeff", age: 19, gender: "Male", StudentID: 483823, School: "aaa", Grade: 71)

    
    let myStudent2 = Student(name: "Dan", age: 17, gender: "Male", StudentID: 483763, School: "aaa", Grade: 50)
    
    let myStudent3 = Student(name: "the letter a", age: 19, gender: "Female", StudentID: 487666, School: "aaa", Grade: 87)
    
    let myStudent4 = Student(name: "HG123", age: 11, gender: "Male", StudentID: 417766, School: "aab", Grade: 11)
    
    
    let Students = [myStudent, myStudent1, myStudent2, myStudent3, myStudent4]
    
    //TODO: SORT STUDENTS
    var highestGrade = Students[0].Grade;
    for student in Students {
        if(student.Grade > highestGrade){
            highestGrade = student.Grade;
            
           
        }
    }
    
    let myTeacher1 = Teacher(name: "Harry1", age: 34, gender: "Male", coolness: 0.333334)
    
    let myTeacher2 = Teacher(name: "Harry2", age: 44, gender: "Male", coolness: 0.761)
    
    let myTeacher3 = Teacher(name: "Harry3", age: 28, gender: "Female", coolness: 0.19992)
    
    
    let myClass = Class(teacher: myTeacher2, students: [myStudent, myStudent1, myStudent2, myStudent3, myStudent4])
    
    print(myClass)
    
}
