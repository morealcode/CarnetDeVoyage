//
//  TestButtonsView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct ButtonDeclarationView: View {
    func feedback(_ message: String = "Button clicked") {
        print(message)
    }

    var body: some View {

        VStack(spacing: 24) {

            // Text only
            Button("Text only") {
                feedback()
            }
            
            // Text and Image in parameters
            Button("Text + Image", systemImage: "checkmark.seal", action: { feedback()
            })
            // .labelStyle(.iconOnly) // Show only icon

            // Button with action parameter
            Button(action: {
                feedback()
            }) {
                Text("Action param")
            }

            // Button without parameters
            Button {
                feedback()
            } label: {
                /// Any views, Label is good for a Button
                Label("Label", systemImage: "checkmark.seal")
            }

        }
    }
}

#Preview {
    ButtonDeclarationView()
}
