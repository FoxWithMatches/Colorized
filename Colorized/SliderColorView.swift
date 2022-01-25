//
//  SliderColorView.swift
//  Colorized
//
//  Created by Alisa Ts on 24.01.2022.
//

import SwiftUI

struct SliderColorView: View {
    
    @Binding var value: Double
    @State private var textField = ""
   
    let tintColor: Color
    
    var body: some View {
        
        HStack {
            Text("\(lround(value))").frame(width: 35)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(tintColor)
                .onChange(of: value) { _ in
                    textField = "\(lround(value))"
                }
            
            SliderTextField(textField: $textField, value: $value)
            
        }
        .onAppear {
            textField = "\(lround(value))"
        }
    }
}


struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView(value: .constant(0.0), tintColor: .red)
    }
}
