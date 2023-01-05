//
//  DailyScrum.swift
//  Easel
//
//  Created by Fadhli Rahim on 5/1/23.
//

import Foundation

// Model for DailyScrum
struct DailyScrum: Identifiable {
    let id : UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    // Since the data array didn't initiliaze the id, you have to init it
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme ){
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        
    }
}

// Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
// Extensions here are to add sample data
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
    ]
}
