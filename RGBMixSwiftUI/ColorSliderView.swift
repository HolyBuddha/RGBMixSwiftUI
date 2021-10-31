//
//  ColorSlider.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ColorSliderView: View {
   
    @Binding var valueFromSlider: Double
    @State var sliderColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(String(format: "%.0f", valueFromSlider))
                .frame(width: 40, height: 30)
            Slider(value: $valueFromSlider, in: 0...255, step: 1)
                .accentColor(sliderColor)
            TextField("", value: $valueFromSlider, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
        }
        .padding()
        .shadow(radius: 5)
    }
}

//struct ColorSlider_Previews:
//    PreviewProvider{
//
//    static var previews: some View {
//        ColorSliderView(valueFromSlider: 90.0, sliderColor: .red)
//}
//}

