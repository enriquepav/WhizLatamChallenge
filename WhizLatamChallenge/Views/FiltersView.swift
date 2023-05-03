//
//  FiltersView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 3/05/23.
//

import SwiftUI

struct FiltersView: View {
    
    @State var isChecked1 = FilterManager.sharedInstance.filterSuccessful
    @State var isChecked2 = FilterManager.sharedInstance.filterFailure
    
    @State private var minValue = FilterManager.sharedInstance.minYear
    @State private var maxValue = FilterManager.sharedInstance.maxYear
    
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
           
        }.onDisappear {
            FilterManager.sharedInstance.minYear = minValue
            FilterManager.sharedInstance.maxYear = maxValue
            FilterManager.sharedInstance.filterSuccessful = isChecked1
            FilterManager.sharedInstance.filterFailure = isChecked2
        }
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}
