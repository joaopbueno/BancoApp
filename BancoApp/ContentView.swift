//
//  ContentView.swift
//  BancoApp
//
//  Created by João Bueno on 05/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.darkColor
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Text("X")
                        .font(.title)
                        .foregroundColor(Color.whiteColor)
                        .padding()
                        .background(Color.backgroundXColor)
                        .cornerRadius(10)
                }
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.fontColor)
                    .background(Color.backgroundX)
                    .clipShape(Circle())
                    .padding()
                
                TextView(text: "João Bueno", font: .title)
                TextView(text: "UX UI Designer", font: .headline)
                Spacer()
            }
        }
    }
}

struct TextView: View {
    let text: String
    let font: Font
    
    var body: some View {
        Text(text)
            .foregroundColor(Color.fontColor)
            .font(font)
    }
}

#Preview {
    ContentView()
}
