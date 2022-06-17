//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Song Jinke on 15/6/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { object in
                HStack {
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)º F")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                }
            }
            .navigationTitle("Suzhou City")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
