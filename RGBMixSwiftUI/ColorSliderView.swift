//
//  ColorSlider.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ColorSliderView: View {
   
    @State var value: Double
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(String(format: "%.0f", value))
                .frame(width: 40, height: 30)
            Slider(value: $value, in: 0...255, step: 1)
            TextFieldView(value: String(format: "%.0f", value))
        }
        .padding()
        .shadow(radius: 5)
    }
}

struct ColorSlider_Previews:
    PreviewProvider{

    static var previews: some View {
        ColorSliderView(value: 90.0)
}
}
