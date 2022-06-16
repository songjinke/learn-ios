//
//  ColorSwatch.swift
//  SwiftUIBasics
//
//  Created by Song Jinke on 16/6/2022.
//

import SwiftUI

struct ColorSwatch: View {
    var color: Color
    
    var body: some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
    }
}

struct ColorSwatch_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatch(color: .red)
    }
}
