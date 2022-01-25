//
//  RectangleView.swift
//  Colorized
//
//  Created by Alisa Ts on 24.01.2022.
//

import SwiftUI

struct RectangleView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 320, height: 150)
            .cornerRadius(10)
            .foregroundColor(Color(red: redValue, green: greenValue, blue: blueValue))
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redValue: 0, greenValue: 0, blueValue: 0)
    }
}
