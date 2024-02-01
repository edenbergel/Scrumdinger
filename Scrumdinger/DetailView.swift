//
//  DetailView.swift
//  Scrumdinger
//
//  Created by eden bergel on 01/02/2024.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
               Label("Start Meeting", systemImage: "timer")
                    .accessibilityLabel("Meeting Entry")
                    .foregroundColor(.accentColor)
                    .font(.headline)
                
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(6)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(6)
                }
                .accessibilityElement(children: .combine)
            }
            
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
