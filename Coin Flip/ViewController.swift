//
//  ViewController.swift
//  Coin Flip
//
//  Created by Hung-Ching Song on 2019/3/19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private static let initialText: String = "?"
    
    @IBOutlet var labelHeadsOrTails: UILabel!
    @IBAction func flip(_ sender: UIButton) {
        sender.isEnabled = false
        UIView.animate(
            withDuration: 0.5,
            animations: {
                self.labelHeadsOrTails.alpha = 0
            },
            completion: { (ignore) in
                let isHeads = Bool.random()
                if (isHeads) {
                    self.labelHeadsOrTails.text = "H"
                } else {
                    self.labelHeadsOrTails.text = "T"
                }
                UIView.animate(
                    withDuration: 0.5,
                    animations: {
                        self.labelHeadsOrTails.alpha = 1
                    },
                    completion: { (ignore) in
                        sender.isEnabled = true
                    }
                )
            }
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHeadsOrTails.text = ViewController.initialText
    }
}

