//
//  HStackView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SDEK").font(.largeTitle).fontWeight(.bold)
            HStack {
                Rectangle()
                    .foregroundStyle(.pink)
                    .frame(width: 25)
                Text("My")
                Spacer()
                Text("Setting")
                Spacer()
                Text("Menu")
            }
            .border(.orange)
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: 25)
                Text("My")
                Spacer()
                Text("Setting")
                Spacer()
                Text("Menu")
            }
            .border(.red)
            
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundStyle(.brown)
                    .frame(width: 25)
                Text("My")
                Spacer()
                Text("Setting")
                Spacer()
                Text("Menu")
            }
            .border(.cyan)

            Text("Spacing: 100")
                .font(.title)
                .foregroundStyle(.pink)
            HStack(spacing: 100) {
                Image(systemName: "figure.golf")
                Image(systemName: "figure.fishing")
                Image(systemName: "figure.flexibility")
            }.padding()
                .font(.largeTitle)
                .foregroundStyle(.pink)
        }
    }
}

#Preview("main") {
    HStackView()
}
#Preview("dark.left", traits: .landscapeLeft) {
    HStackView()
        .preferredColorScheme(ColorScheme.dark)
}
#Preview("light.right", traits: .landscapeRight) {
    HStackView()
        .preferredColorScheme(ColorScheme.light)
}
