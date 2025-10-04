//
//  ButtonFirstView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct ButtonFirstView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Button")
                .font(.largeTitle)
                .bold()
            
            Button("Default button style") {}
            
            Button(action: {
                
            }){
                Text("Great")
                    .font(.headline)
                Text("Job")
                    .foregroundStyle(.pink)
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Red button")
                    .foregroundStyle(Color.red)
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Thin Font Weight")
                    .fontWeight(.thin)
            }
            
            Divider()
            
            Button(action: {}, label: {
                VStack{
                    Text("Hello")
                    Text("World")
                }
            })
            
            Divider()
            
            Button(action: {}) {
                Text("Solid Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .shadow(color: .pink, radius: 10, y: 5)
            
            Divider()
            
            Button(action: {}){
                Text("Button Rounded ends")
                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                    .foregroundStyle(.white)
                    .background(.mint)
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Border Button")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.purple, lineWidth: 2)
                    )
            }
            
            Divider()
            
            Button(action: {}) {
                Text("Register")
                    .padding(.horizontal)
                Image(systemName: "person.2.badge.plus")
            }
            .padding()
            .foregroundStyle(.white)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: .infinity))
            
            Divider()
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "video.fill")
                    Text("Video Call")
                        .padding(.horizontal)
                }
            }
            .padding()
            .foregroundStyle(.white)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: .infinity))
            
            
        }
    }

}

#Preview {
    ButtonFirstView()
}
#Preview("Dark") {
    ButtonFirstView()
        .preferredColorScheme(ColorScheme.dark)
}
