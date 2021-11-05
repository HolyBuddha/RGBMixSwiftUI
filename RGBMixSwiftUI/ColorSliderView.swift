//
//  ColorSlider.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var valueFromSlider: Double
    
    @State private var textValue = ""
    
    let sliderColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Text(String(format: "%.0f", valueFromSlider))
                .frame(width: 50)
            Slider(value: $valueFromSlider, in: 0...255,
                   step: 1)
                .accentColor(sliderColor)
                .onChange(of: valueFromSlider) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            ColorValueTFView(valueToSlider: $valueFromSlider,
                             valueFromTF: $textValue)
        }
        .onAppear {
            textValue = "\(lround(valueFromSlider))"
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(valueFromSlider: .constant(30), sliderColor: .red)
    }
}
