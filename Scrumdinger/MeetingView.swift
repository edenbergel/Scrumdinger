//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by eden bergel on 25/01/2024.
//

import SwiftUI

struct MeetingView: View {
    
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }.font(.caption)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }.font(.caption)
            }
        }
    }
}

#Preview {
    MeetingView()
}
