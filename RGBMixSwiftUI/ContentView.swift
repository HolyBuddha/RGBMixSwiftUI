//
//  ContentView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = Double.random(in: 0...255)
    @State var greenSliderValue = Double.random(in: 0...255)
    @State var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack() {
            Color.blue
                .opacity(0.2)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                ShowColorView(color: .red)
                    .padding(.top, 40)
                    .padding(.bottom)
                VStack(alignment: .center, spacing: -15) {
                        ColorSliderView(value: redSliderValue)
                        ColorSliderView(value: greenSliderValue)
                        ColorSliderView(value: blueSliderValue)
                }
                    Spacer()
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//extension ContentView {
//    func doubleToString(_ number: Double) -> String {
//        let result = String(format: "%.0f", number)
//        return result
//    }
//}

