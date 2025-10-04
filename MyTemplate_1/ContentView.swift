//
//  ContentView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SDEK Company")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            VStack(alignment: .leading, spacing: 40) {
                Text("안녕하세요. 이성혁 님").font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("현재는 VIP고객 입니다.")
                    .font(.title2)
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.mint)
            .padding()
            
            

            Text("Subtitle")
                .font(.title)
                .foregroundStyle(.gray)

            Text("Description yes yes yes")
                .foregroundStyle(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20).foregroundStyle(.blue)
                )
                .layoutPriority(1)

            Image(systemName: "keyboard.fill")
                .font(.largeTitle)

            HStack(spacing: 20) {
                Image(systemName: "figure.walk")
                Text("Running...")
                Image(systemName: "figure.walk.motion")
            }

        }
        .font(.title)
        .ignoresSafeArea()

    }
}

#Preview("dark", traits: .landscapeRight) {

    ContentView()
        .preferredColorScheme(.dark)
}

#Preview("light", traits: .landscapeLeft) {
    ContentView()
        .preferredColorScheme(.light)
}
#Preview("main") {
    ContentView()
}
