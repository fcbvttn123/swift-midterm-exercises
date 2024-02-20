//
//  GameInfo.swift
//  w6Exercise
//
//  Created by Default User on 2/20/24.
//

import UIKit

class GameInfo: UIViewController {
    
    @IBOutlet var lbScore: UILabel!
    @IBOutlet var lbTimeLeft: UILabel!
    @IBOutlet var lbHighScore: UILabel!
    @IBOutlet var lbLevel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        lbScore.text = "Score: \(mainDelegate.gameInfo["score"] ?? "")"
        lbTimeLeft.text = "Time Left: \(mainDelegate.gameInfo["timeLeft"] ?? "")"
        lbHighScore.text = "High Score: \(mainDelegate.gameInfo["highScore"] ?? "")"
        lbLevel.text = "Level: \(mainDelegate.gameInfo["level"] ?? "")"
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
