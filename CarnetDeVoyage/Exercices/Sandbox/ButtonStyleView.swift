//
//  ButtonStyleView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct ButtonStyleView: View {

    func feedback() {
        print("Clicked")
    }

    var body: some View {

        ScrollView {

            VStack(spacing:24) {

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)
                    .buttonStyle(.bordered)

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)
                    .buttonStyle(.borderedProminent)

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)
                    .buttonStyle(.glass)

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)
                    .buttonStyle(.glassProminent)

                Button("Confirm", systemImage: "checkmark.seal", action: feedback)
                    .buttonStyle(.plain)

                Divider()

                Button("Continue", systemImage: "arrow.up", action: feedback)
                    .buttonStyle(.glassProminent)
                    .tint(.purple)
                    .controlSize(.small)
                
                Button("Continue", systemImage: "arrow.up", action: feedback)
                    .buttonStyle(.glassProminent)
                    .tint(.purple)
                    .controlSize(.large)
                
                Button("Supprimer", systemImage: "trash", role: .destructive, action: feedback)
                    .buttonStyle(.glass)
                
                Button("Custom style", action: feedback)
                    .buttonStyle(WarningStyle())
                    // ou .buttonStyle(.warning)
            }
        }
        .background(.gray.opacity(0.2))
    }
}

struct WarningStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.orange, in: .capsule)
            .foregroundStyle(.white)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

extension ButtonStyle where Self == WarningStyle {
    static var warning: WarningStyle {
        .init()
    }
}

#Preview {
    NavigationStack{
        ButtonStyleView()
            .navigationTitle("Button styles")
            .navigationBarTitleDisplayMode(.inline)
    }
}
