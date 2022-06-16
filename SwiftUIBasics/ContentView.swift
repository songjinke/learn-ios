//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Song Jinke on 15/6/2022.
//

import SwiftUI

struct ContentView: View {
    @State var red = 0.1
    @State var green = 0.2
    @State var blue = 0.3
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.light)
            .padding()
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
            ColorSlider(value: $red, color: .red)
            ColorSlider(value: $green, color: .green)
            ColorSlider(value: $blue, color: .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
