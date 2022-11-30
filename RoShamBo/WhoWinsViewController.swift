//
//  WhoWinsViewController.swift
//  RoShamBo
//
//  Created by admin on 30.11.2022.
//

import UIKit

class WhoWinsViewController: UIViewController {
    
    var oponentMove: Move?
    var playerMove: Move?
    

    @IBOutlet weak var playerMoveLabel: UILabel!
    @IBOutlet weak var oponentMoveLabel: UILabel!
    
    override func viewDidLoad() {
        switch oponentMove {
        case .scissors: self.oponentMoveLabel.text = "Scissors"
        case .paper: self.oponentMoveLabel.text = "Paper"
        case .rock: self.oponentMoveLabel.text = "Rock"
        default: print("Error")
        }
        switch playerMove {
        case .scissors: self.playerMoveLabel.text = "Scissors"
        case .paper: self.playerMoveLabel.text = "Paper"
        case .rock: self.playerMoveLabel.text = "Rock"
        default: print("Error")
        }
    }
    
    @IBAction func dismiss() {
        // dismiss this view controller
        self.dismiss(animated: true, completion: nil)
    }
   

}
