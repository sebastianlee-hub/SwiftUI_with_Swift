//
//  ZStackView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("SDEK yes yes yes yes")
                    .frame(maxWidth: .infinity, minHeight: 170)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.pink)
                    .fontWeight(.bold)
                
                Text("yes yes yes yes yes yes yes yes yes")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.green)
                
                Spacer()
                
            }
            .font(.title)
            
            ZStack(alignment: .bottomTrailing) {
                Image("dev2")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Developer's working")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(8)
            }
            
            
        }
//        .ignoresSafeArea(.all) // Ignore the safe areas
    }
}

#Preview {
    ZStackView()
}
