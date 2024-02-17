//
//  ViewController.swift
//  w2ex1
//
//  Created by Default User on 2/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    let newTriangle = Triangle(a: 5, b: 7, c: 8)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Area: " + String(newTriangle.getArea()));
        print("Perimeter: " + String(newTriangle.getPerimeter()))
    }


}

