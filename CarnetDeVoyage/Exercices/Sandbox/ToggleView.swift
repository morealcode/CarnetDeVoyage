//
//  ToogleView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isReady: Bool = true
    
    var body: some View {
        VStack {
            
            List {
                
                Toggle("Ready to go", isOn: $isReady)
                    .toggleStyle(.switch)
                
                Toggle("Ready to go", isOn: $isReady)
                    .toggleStyle(.button)
                
            }
        }
    }
}

#Preview {
    ToggleView()
}
