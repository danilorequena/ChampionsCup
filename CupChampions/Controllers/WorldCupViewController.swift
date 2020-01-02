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
    @IBOutlet weak var tableview: UITableView!
    
    
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

extension WorldCupViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        
        cell.prepare(with: game)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        
        return match.stage
    }
    
    
}

extension WorldCupViewController: UITableViewDelegate{
    
}
