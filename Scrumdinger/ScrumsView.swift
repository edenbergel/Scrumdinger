//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by eden bergel on 01/02/2024.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    HStack(spacing: 0) {
                        GeometryReader { geometry in
                            Rectangle()
                                .fill(scrum.theme.mainColor)
                                .frame(width: 5, height: geometry.size.height)
                        }
                        .fixedSize(horizontal: true, vertical: false)

                        CardView(scrum: scrum)
                    }
                }
                .listRowSeparator(.hidden)
                .listRowInsets(
                    .init(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 15
                    )
                )
            }
            .listRowSpacing(10.0)
            .navigationTitle("Daily Scrums")
            .toolbar {
                ToolbarItem() {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
