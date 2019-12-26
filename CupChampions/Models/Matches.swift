//
//  Matches.swift
//  CupChampions
//
//  Created by Danilo Requena on 25/12/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import Foundation


struct Match: Codable {
    let stage: String
    let games: [Game]
}
