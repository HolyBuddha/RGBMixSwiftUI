//
//  TextFieldView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 31.10.2021.
//

import SwiftUI

struct TextFieldView: View {
    @State var value: Double
    
    var body: some View {
        TextField("", value: $value, format: .number)
            .frame(width: 40, height: 30)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
}
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: 30)
    }
}
