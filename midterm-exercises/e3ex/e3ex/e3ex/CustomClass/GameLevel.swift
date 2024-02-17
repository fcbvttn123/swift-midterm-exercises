//
//  GameLevel.swift
//  e3ex
//
//  Created by Default User on 2/17/24.
//

import UIKit

class GameLevel: NSObject {
    var speed: String
    var shape: String
    var size: String
    
    init(speed: String, shape: String, size: String) {
        self.speed = speed
        self.shape = shape
        self.size = size
    }
    
    func getSpeed() -> String {
        return speed
    }
    
    func getSize() -> String {
        return size
    }
    
    func getShape() -> String {
        return shape
    }
}
