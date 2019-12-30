//
//  WorldCupViewController.swift
//  CupChampions
//
//  Created by Danilo Requena on 22/12/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {

    var worldCup: WorldCup!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScoreWinner: UILabel!
    @IBOutlet weak var lbScoreVice: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScoore()
    }
    

    func setupScoore(){
        title = "WorldCup \(worldCup.year)"
        ivWinner.image = UIImage(named: "\(worldCup.winner).png")
        ivVice.image = UIImage(named: "\(worldCup.vice).png")
        lbScoreWinner.text = worldCup.winner
        lbScoreVice.text = worldCup.vice
        lbScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"

    }

}
