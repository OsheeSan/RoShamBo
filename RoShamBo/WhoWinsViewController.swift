//
//  WhoWinsViewController.swift
//  RoShamBo
//
//  Created by admin on 30.11.2022.
//

import UIKit

class WhoWinsViewController: UIViewController {
    
    var oponentMove: Move?
    
    @IBOutlet weak var WhoWinsLabel: UILabel!

    override func viewDidLoad() {
        switch oponentMove {
        case .scissors: self.WhoWinsLabel.text = "Scissors"
        case .paper: self.WhoWinsLabel.text = "Paper"
        case .rock: self.WhoWinsLabel.text = "Rock"
        default: print("Error")
        }
    }
    
    @IBAction func dismiss() {
        // dismiss this view controller
        self.dismiss(animated: true, completion: nil)
    }
   

}
