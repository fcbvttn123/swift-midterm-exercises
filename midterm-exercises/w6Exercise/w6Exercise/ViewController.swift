//
//  ViewController.swift
//  w6Exercise
//
//  Created by Default User on 2/20/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lbPlay: UILabel!
    @IBOutlet var lbAbout: UILabel!
    @IBOutlet var lbSetting: UILabel!
    
    @IBAction func goHome(sender: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        lbPlay.text = mainDelegate.options[0]
        lbAbout.text = mainDelegate.options[1]
        lbSetting.text = mainDelegate.options[2]
    }


}

