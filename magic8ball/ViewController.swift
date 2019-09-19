//
//  ViewController.swift
//  magic8ball
//
//  Created by Paul Dudsdeemaytha on 2019-09-18.
//  Copyright © 2019 Paul Dudsdeemaytha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var magicBall: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    @IBAction func findOutClicked(_ sender: Any) {
        randomBallPicked()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallPicked()
    }
    
    func randomBallPicked() {
        randomBallNumber = Int(arc4random_uniform(5))
        magicBall.image = UIImage(named: ballArray[randomBallNumber] )
//        text.font = UIFont(name: "Times New Roman", size: 30)

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallPicked()
    }
}

