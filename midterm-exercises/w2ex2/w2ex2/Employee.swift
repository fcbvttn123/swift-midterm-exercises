//
//  Employee.swift
//  w2ex2
//
//  Created by Default User on 2/17/24.
//

import UIKit

class Employee: NSObject {
    var name: String
    var age: Int
    var occupation: String
    
    init(name: String, age: Int, occupation: String) {
        self.name = name
        self.age = age
        self.occupation = occupation
    }
    
    func getEmployeeInformation() {
        print("Name: " + self.name)
        print("Age: " + String(self.age))
        print("Occupation: " + self.occupation)
    }
}
