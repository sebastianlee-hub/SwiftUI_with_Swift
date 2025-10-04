//
//  GeometryReaderView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            
            Text("Introduction")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("Yes Yes Yes Yes Yes Yes Yes Yes Yes")
                .font(.title)
                .padding()
            
            GeometryReader {geometry in
                Text("Upper Left")
                    .font(.title)
                    .position(x: geometry.size.width/5,
                              y: geometry.size.height/10)
                Text("HELLO HELLO HELLO HELLO HELLO")
                    .font(.title)
                    .position(x: geometry.size.width - 90, y: geometry.size.height - 40)
            }
            .foregroundStyle(.white)
            .background(.pink)
        }
            
    }
}

#Preview {
    GeometryReaderView()
}
