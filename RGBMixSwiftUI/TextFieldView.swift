//
//  TextFieldView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 31.10.2021.
//

import SwiftUI

struct TextFieldView: View {
    @State var value: String
    
    var body: some View {
        TextField("", text: $value)
            .frame(width: 40, height: 30)
            .multilineTextAlignment(.center)
            .background(.white)
            .cornerRadius(4)
}
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: "30")
    }
}
