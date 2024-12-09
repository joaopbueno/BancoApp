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
                
                xView()
                
                AvatarView()
                
                ChoicesView()
                
                Spacer()
            }
        }
    }
}

struct SingleChoiceView: View {
    let text: String
    let systemImage: String
    var body: some View {
        Label(text, systemImage: systemImage)
            .font(.headline)
            .foregroundStyle(Color.fontColor)
            .padding()
            .labelStyle(SpacedLabelStyle())
    }
}

struct SpacedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 20){
            configuration.icon
            configuration.title
        }
    }
}

struct ChoicesView: View {
    let dataArray: [(String, String)] = [(
        "Corporate App",
        "building.2"
    )]
    var body: some View {
        VStack(alignment: .leading){
            ForEach(Array(dataArray.enumerated()), id: \.0) { index, item in
                
                SingleChoiceView(text: item.0, systemImage: item.1)
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

struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.fontColor)
                .background(Color.backgroundX)
                .clipShape(Circle())
                .padding()
            
            TextView(text: "João Bueno", font: .largeTitle)
            TextView(text: "UX UI Designer", font: .headline)
        }
        .padding()
    }
}

struct xView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("X")
                .font(.title)
                .foregroundColor(Color.whiteColor)
                .padding()
                .background(Color.backgroundXColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
