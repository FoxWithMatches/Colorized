//
//  SliderColorView.swift
//  Colorized
//
//  Created by Alisa Ts on 24.01.2022.
//

import SwiftUI

struct SliderColorView: View {
    let tintColor: Color
    
    @Binding var value: Double
    
    @State private var textField = ""
    
    var body: some View {
        
        HStack {
            Text("\(lround(value * 255.0))").frame(width: 35)
            Slider(value: $value)
                .tint(tintColor)
            
            TextField("\(lround(value * 255.0))", text: $textField)
                .textFieldStyle(.roundedBorder)
                .frame(width: 55)
                .keyboardType(.decimalPad)
            
        }
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView(tintColor: .red, value: .constant(0.0))
    }
}
