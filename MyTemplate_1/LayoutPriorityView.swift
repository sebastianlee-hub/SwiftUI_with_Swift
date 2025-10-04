//
//  LayoutPriorityView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct LayoutPriorityView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello Developer")
                    .font(.largeTitle).lineLimit(1)
                Image("dev")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("SDEK")
                    .font(.largeTitle)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Hello Developer")
                    .font(.largeTitle)
                    .layoutPriority(1)
                Image("dev2")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("SDEK")
                    .font(.largeTitle)
                    .lineLimit(1)
            }
            .padding(.horizontal)

        }
    }
}

#Preview {
    LayoutPriorityView()
}
