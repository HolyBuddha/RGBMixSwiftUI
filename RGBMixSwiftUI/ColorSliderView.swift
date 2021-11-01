//
//  ColorSlider.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var valueFromSlider: Double
    let sliderColor: Color
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Text(String(format: "%.0f", valueFromSlider))
                .frame(width: 50)
            Slider(value: $valueFromSlider, in: 0...255, step: 1)
                .accentColor(sliderColor)
            TextField("", value: $valueFromSlider, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.numberPad)
                .padding()
                .shadow(radius: 5)
        }
    }
}
