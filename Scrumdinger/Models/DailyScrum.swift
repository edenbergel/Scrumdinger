//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by eden bergel on 25/01/2024.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID

    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
       self.id = id
       self.title = title
       self.attendees = attendees
       self.lengthInMinutes = lengthInMinutes
       self.theme = theme
   }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Stand Up The Good",
                   attendees: ["Toto", "TomTom", "Nini", "Denden"],
                   lengthInMinutes: 15,
                   theme: .yellow),
        DailyScrum(title: "Stand Up The Bad",
                   attendees: ["Leti", "Mel", "Anto", "Kanye"],
                   lengthInMinutes: 20,
                   theme: .orange),
        DailyScrum(title: "Stand Up The Ugly",
                   attendees: ["Al", "Vinc", "Bass", "Riri"],
                   lengthInMinutes: 10,
                   theme: .poppy)
    ]
}
