//
//  ContentView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double(Int.random(in: 0...255))
    @State private var greenSliderValue = Double(Int.random(in: 0...255))
    @State private var blueSliderValue = Double(Int.random(in: 0...255))
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color.blue
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    ShowColorView(redColor: redSliderValue, greenColor: greenSliderValue, blueColor: blueSliderValue)
                        .padding(.top, 40)
                        .padding(.bottom)
                    VStack(alignment: .center, spacing: -15) {
                        ColorSliderView(valueFromSlider: $redSliderValue, sliderColor: .red)
                        ColorSliderView(valueFromSlider: $greenSliderValue, sliderColor: .green)
                        ColorSliderView(valueFromSlider: $blueSliderValue, sliderColor: .blue)
                    }
                    Spacer()
                }
                .onTapGesture { isInputActive = false }
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



