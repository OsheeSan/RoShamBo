//
//  WhoWinsViewController.swift
//  RoShamBo
//
//  Created by admin on 30.11.2022.
//

import UIKit

class WhoWinsViewController: UIViewController {

    var oponentMove:    Move?
    var playerMove:     Move?

    var winner:         IsWin?
    
    
    @IBOutlet weak var winnerView: UIView!
    @IBOutlet weak var WinnerLabel: UILabel!
    
    @IBOutlet weak var playerMoveLabel: UILabel!
    @IBOutlet weak var oponentMoveLabel: UILabel!
    
    
    @IBOutlet weak var winnerIconLabel: UILabel!
    
    @IBOutlet weak var MovesSubview: UIView!
    
    
    override func viewDidLoad() {
        winnerView.layer.cornerRadius = 10
        winnerView.backgroundColor = .orange
        MovesSubview.layer.cornerRadius = 10
        winnerIconLabel.textColor = .orange
    
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
        switch findWinner(first: self.playerMove, second: self.oponentMove) {
        case .draw:
            WinnerLabel.text = "DRAW!"
            winnerIconLabel.text = "="
        case .win:
            WinnerLabel.text = "WIN!"
            winnerIconLabel.text = ">"
        case .lose:
            WinnerLabel.text = "LOSE!"
            winnerIconLabel.text = "<"
        default: break
        }
    }
    
    func findWinner(first : Move?, second: Move?) -> IsWin? {
    switch first {
        case .scissors:
        switch second {
        case .scissors: return .draw
        case .paper:    return .win
        case .rock:     return .lose
        default: break
        }
        case .paper:
        switch second {
        case .scissors: return .lose
        case .paper:    return .draw
        case .rock:     return .win
        default: break
        }
        case .rock:
        switch second {
        case .scissors: return .win
        case .paper:    return .lose
        case .rock:     return .draw
        default: break
        }
        default: break
        }
        return .draw
    }
    
    @IBAction func dismiss() {
        // dismiss this view controller
        self.dismiss(animated: true, completion: nil)
    }
   

}
