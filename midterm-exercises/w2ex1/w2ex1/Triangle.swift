//
//  Triangle.swift
//  w2ex1
//
//  Created by Default User on 2/17/24.
//

import UIKit

class Triangle: NSObject {
    var a: Int
    var b: Int
    var c: Int
    
    init(a: Int, b: Int, c: Int) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func getArea() -> Double {
        var s = (a+b+c)/2
        let area = sqrt(Double(s * (s - a) * (s - b) * (s - c)))
        return area
    }
    
    func getPerimeter() -> Double {
        return Double(a+b+c)
    }
}
