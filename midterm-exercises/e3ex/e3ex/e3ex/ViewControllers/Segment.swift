//
//  Segment.swift
//  e3ex
//
//  Created by Default User on 2/17/24.
//

import UIKit

class Segment: UIViewController {
    @IBOutlet var segmentUIElement: UISegmentedControl!
    @IBOutlet var speedLabel: UILabel!
    @IBOutlet var sizeLabel: UILabel!
    @IBOutlet var shapeLabel: UILabel!
    
    let easyLevel = GameLevel(speed: "Slow", shape: "Square", size: "Small")
    let mediumLevel = GameLevel(speed: "Medium", shape: "Circle", size: "Medium")
    let hardLevel = GameLevel(speed: "Fast", shape: "Triangle", size: "Big")
    
    func updateSegment() {
        if(segmentUIElement.selectedSegmentIndex == 0) {
            speedLabel.text = easyLevel.getSpeed()
            sizeLabel.text = easyLevel.getSize()
            shapeLabel.text = easyLevel.getShape()
        }
        
        if(segmentUIElement.selectedSegmentIndex == 1) {
            speedLabel.text = mediumLevel.getSpeed()
            sizeLabel.text = mediumLevel.getSize()
            shapeLabel.text = mediumLevel.getShape()
        }
        
        if(segmentUIElement.selectedSegmentIndex == 2) {
            speedLabel.text = hardLevel.getSpeed()
            sizeLabel.text = hardLevel.getSize()
            shapeLabel.text = hardLevel.getShape()
        }
    }
    
    @IBAction func segmentChanged() {
        updateSegment()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateSegment()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
