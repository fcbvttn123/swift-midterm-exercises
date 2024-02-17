//
//  ViewController.swift
//  w2ex2
//
//  Created by Default User on 2/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    let newEmployee = Employee(name: "David", age: 25, occupation: "Software Engineer")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newEmployee.getEmployeeInformation()
    }


}

