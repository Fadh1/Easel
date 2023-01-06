//
//  Lessons.swift
//  Easel
//
//  Created by Fadhli Rahim on 6/1/23.
//

import SwiftUI

struct Lesson : Identifiable {
    let id : UUID
    var title : String
    var LengthInMinutes : Int
    var theme : Theme
    
    init(id: UUID = UUID(), title: String, LengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.LengthInMinutes = LengthInMinutes
        self.theme = theme
    }
    
    
}

extension Lesson {
    static let sampleData: [Lesson] =
    [
        Lesson(title: "Basic 1", LengthInMinutes: 10, theme: .poppy),
        Lesson(title: "Intermediate 2", LengthInMinutes: 5, theme: .orange),
        Lesson(title: "Advanced 3", LengthInMinutes: 5, theme: .yellow)
    ]
}
