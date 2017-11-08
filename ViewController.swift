//
//  ViewController.swift
//  Magic 8
//
//  Created by Connor Svrcek on 5/28/17.
//  Copyright © 2017 Connor Svrcek. All rights reserved.
//

import UIKit

let fortunes: Array<String> = ["Guaranteed!", "It will be so, my child!", "No doubts over here!",
                "As far as I can tell, definitely!", "Believe it!", "With my all-knowing knowledge, yes!",
                "Most likely!", "Looks good to me!", "Yes!", "Everything tells me yes!",
                "Wait, one more time?", "Uh, ask again a little later.", "I better not say...",
                "Not sure actually.", "Think a little harder and do it again.", "I wouldn't bet on it.",
                "I'm going to have to say no.", "My people say no.", "Not looking good buddy...", "Highly unlikely actually."]

class ViewController: UIViewController {

    
    @IBOutlet weak var fortuneButton: UIButton!
    @IBOutlet weak var fortuneView: UITextView!
    @IBOutlet weak var magic8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        magic8.sizeToFit()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonWasClicked(_ sender: Any) {
        fortuneView.text! = randomizedFortune(fortuneArray: fortunes)
    }

}


func randomizedFortune(fortuneArray: Array<Any>) -> String
{
    let index = Int(arc4random_uniform(UInt32(fortuneArray.count)))
    
    return fortuneArray[index] as! String
}
