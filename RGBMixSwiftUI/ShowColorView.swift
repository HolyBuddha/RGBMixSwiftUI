//
//  ShowColorView.swift
//  RGBMixSwiftUI
//
//  Created by Vladimir Izmaylov on 30.10.2021.
//

import SwiftUI

struct ShowColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Rectangle()
            .cornerRadius(10)
            .frame(width: 300, height: 150)
            .foregroundColor(
                Color(
                    red: redColor / 255,
                    green: greenColor / 255,
                    blue: blueColor / 255))
            .shadow(color: .gray, radius: 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white)
            )
    }
}

struct ShowColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            ShowColorView(redColor: 144, greenColor: 133, blueColor: 100)
        }
    }
}
