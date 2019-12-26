//
//  WorldCup.swift
//  CupChampions
//
//  Created by Danilo Requena on 25/12/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import Foundation


struct WorldCup: Codable {
    let year: Int
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore: String
    let matches: [Match]
}
