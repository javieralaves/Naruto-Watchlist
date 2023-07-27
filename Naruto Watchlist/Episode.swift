//
//  Episode.swift
//  Naruto Watchlist
//
//  Created by Javier Alaves on 27/7/23.
//

import Foundation

struct Episode: Codable, Hashable {
    let episode: String
    let title: String
    let isFiller: Bool
    var watched: Bool
}
