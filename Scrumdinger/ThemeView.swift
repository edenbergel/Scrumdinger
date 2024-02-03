//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by eden bergel on 03/02/2024.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme

    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
