//
//  ViewController.swift
//  RoShamBo
//
//  Created by admin on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func randomMove() -> Move? {
        switch Int.random(in: 1...3) {
        case 1:
            return Move.paper
        case 2:
            return Move.rock
        case 3:
            return Move.scissors
        default: return nil
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            let game = segue.destination as! WhoWinsViewController
            switch id {
            case "Rock":
                print("Rock")
                game.playerMove = .rock
                game.oponentMove = randomMove()
            case "Paper":
                print("Paper")
                game.playerMove = .paper
                game.oponentMove = randomMove()
            case "Scissors":
                print("Scissors")
                game.playerMove = .scissors
                game.oponentMove = randomMove()
            default:break
            }
        }
    }
    
}

