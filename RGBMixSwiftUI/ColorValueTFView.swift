//
//  ColorValueTFView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 05.11.2021.
//

import SwiftUI

struct ColorValueTFView: View {
    @Binding var valueToSlider: Double
    @Binding var valueFromTF: String
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $valueFromTF) { _ in
            checkValue()
        }
        //TextField("", value: $valueFromTF, format: .number)
        .textFieldStyle(.roundedBorder)
        .frame(width: 50)
        .multilineTextAlignment(.trailing)
        .keyboardType(.numberPad)
        .padding()
        .shadow(radius: 5)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}
extension ColorValueTFView {
    private func checkValue() {
        if let value = Int(valueFromTF),
           (0...255).contains(value) {
            self.valueToSlider = Double(value)
            return
        }
        showAlert.toggle()
        valueToSlider = 0
        valueFromTF = "0"
    }
}
struct ColorValueTFView_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTFView(valueToSlider: .constant(100), valueFromTF: .constant("100"))
    }
}
