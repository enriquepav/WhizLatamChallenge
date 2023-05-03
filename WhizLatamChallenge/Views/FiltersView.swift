//
//  FiltersView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 3/05/23.
//

import SwiftUI

struct FiltersView: View {
    
    @State var isChecked1 = true
    @State var isChecked2 = true
    
    @State private var minValue = 1900.0
    @State private var maxValue = 2500.0
    
    var body: some View {
        VStack {
            Text("Selecciona el rango de años")
            HStack {
                Text("Min: \(Int(minValue))")
                Spacer()
                Text("Max: \(Int(maxValue))")
            }
            .padding()
            
            Slider(value: $minValue, in: 1900...maxValue, step: 1)
                .padding(.horizontal)
            
            Slider(value: $maxValue, in: minValue...2500, step: 1)
                .padding(.horizontal)
            
            Toggle(isOn: $isChecked1) {
                Text("Misiones Exitosas")
            }
            
            if isChecked1 {
                Text("Checked!")
            } else {
                Text("Not checked.")
            }
            
            Toggle(isOn: $isChecked2) {
                Text("Misiones Fallidas")
            }
            
            if isChecked2 {
                Text("Checked!")
            } else {
                Text("Not checked.")
            }
        }
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
