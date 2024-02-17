//
//  Slider.swift
//  e3ex
//
//  Created by Default User on 2/17/24.
//

import UIKit

class Slider: UIViewController {
    
    @IBOutlet var sliderUIElement: UISlider!
    @IBOutlet var labelUIElement: UILabel!
    
    @IBAction func showSliderValue() {
        labelUIElement.text = String(format: "%.1f", sliderUIElement.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
