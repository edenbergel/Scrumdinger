//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by eden bergel on 03/02/2024.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int

    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else { return 1 }
        return Double(secondsElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }

    var body: some View {
        VStack {
            ProgressView(value: progress)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }.font(.caption)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                }.font(.caption)
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
    }
}

#Preview {
    MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180)
        .previewLayout(.sizeThatFits)
}
