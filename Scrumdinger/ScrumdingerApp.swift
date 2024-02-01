//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by eden bergel on 25/01/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
