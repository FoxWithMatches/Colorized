//
//  ContentView.swift
//  Colorized
//
//  Created by Alisa Ts on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool
    
    @State private var redValue = 0.7
    @State private var greenValue = 0.5
    @State private var blueValue = 0.7
    
    var body: some View {
        VStack {
            RectangleView(redValue: redValue,
                          greenValue: greenValue,
                          blueValue: blueValue)
            
            SliderColorView(tintColor: .red, value: $redValue)
                .focused($amountIsFocused)
            SliderColorView(tintColor: .green, value: $greenValue)
                .focused($amountIsFocused)
            SliderColorView(tintColor: .blue, value: $blueValue)
                .focused($amountIsFocused)
            
            Spacer()
            
        }
        .padding()
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    amountIsFocused = false
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



