//
//  ViewController.swift
//  InShear
//
//  Created by Sri Kalyan Ganja on 8/8/17.
//  Copyright © 2017 KLYN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    if touch.force >= touch.maximumPossibleForce {
                        shearLabel.text = "385+ grams"
                    } else {
                        let shear = touch.force/touch.maximumPossibleForce
                        let grams = shear * 385
                        let roundGrams = Int(grams)
                        shearLabel.text = "\(roundGrams) grams"
                    }
                    
                }
            }
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        shearLabel.text = "0 grams"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

