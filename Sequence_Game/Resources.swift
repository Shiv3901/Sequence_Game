//
//  Resources.swift
//  Idea
//
//  Created by Shivam Savani on 26/12/20.
//

import Foundation

// for future implementation for storing usernames and highscores
// of more than one players
struct OneRound: Hashable, Codable {
    var llist: [Float]
    var level: String
    var HigheRecordTime: [Float]
}
