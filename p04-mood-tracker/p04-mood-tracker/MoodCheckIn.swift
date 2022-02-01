//
//  MoodCheckIn.swift
//  p04-mood-tracker
//
//  Created by Bailey Van Wormer on 2/1/22.
//

import Foundation

struct MoodCheckIn: Identifiable {
    var id: ObjectIdentifier
    
    var mood: String
    var timestamp: Date
    var formattedTimestamp: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return(formatter.string(from: timestamp))
    }
    
}
