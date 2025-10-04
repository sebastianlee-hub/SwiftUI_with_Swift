//
//  SectionView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct SectionView: View {
    @State private var isOn = true
    var body: some View {
        Form {
            Section(header: SectionTNI(name: "Friends", image: "person.fill", color: .green)) {
                Text("Sebastian Lee")
                Text("Sebastian Kim")
                Text("Sebastian Park")
                Toggle(isOn: $isOn) {
                    Text("연락처 허용")
                }
            }

            Section(
                header: SectionTNI(
                    name: "Music",
                    image: "music.pages.fill",
                    color: .pink
                )
            ) {
                Text("AAA")
                Text("BBB")
                Text("CCC")
            }

            Section(
                header: SectionTNI(
                    name: "Languages",
                    image: "translate",
                    color: .blue
                ),
                footer: Text("Selected a language")
            ) {
                Text("Korean")
                Text("Japanese")
                Text("English")
            }
        }
    }
}
struct SectionTNI: View {
    var name: String
    var image: String
    var color: Color
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundStyle(color)
    }
}

#Preview {
    SectionView()
}
