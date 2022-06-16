//
//  ColorSlider.swift
//  SwiftUIBasics
//
//  Created by Song Jinke on 16/6/2022.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            ColorSwatch(color: color)
            Slider(value: $value, in: 0...1, step: 0.1)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State static var value = 0.3
    
    static var previews: some View {
        ColorSlider(value: $value, color: .blue)
    }
}
