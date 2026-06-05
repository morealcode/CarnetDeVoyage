//
//  SliderSteppersView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct SliderSteppersView: View {

    @State private var valueSlider: Double = 1.0
    @State private var valueStepper: Double = 1.0
    @State private var isEditingSlider: Bool = false

    var body: some View {

        VStack {
            
            HStack{
                
                Image(systemName: "snowflake")
                    .foregroundStyle(.blue)
                
                Slider(value: $valueSlider, in: 1...5, step: 0.5) { editing in
                    isEditingSlider = editing
                }
                
                Image(systemName: "flame")
                    .foregroundStyle(.red)
            }
            Text(String(valueSlider))
            
            Stepper("Name", value: $valueStepper, step: 1)
            Text(String(valueStepper))
        }
        .frame(width: 300)

    }
}

#Preview {
    SliderSteppersView()
}
