//
//  CarteLieu.swift
//  CarnetDeVoyage
//
//  Created by Alexis Morel on 02/06/2026.
//

import SwiftUI

struct ListeCardLieu: View {

    var body: some View {
        ScrollView {
            
            VStack {
                
                VStack {
                    Text("La carte d'un lieu")
                        .font(.title2.bold())

                    Text(
                        "Livrable du jour: une carte qui combine image cadrée, overlay (badge), Label, formes, étoiles, et tous les modifiers vus aujourd'hui"
                    )
                    .padding(.vertical, 6)
                    .foregroundStyle(.secondary)
                }
                .padding()

                ForEach(Destination.examples) { destination in

                    CarteLieu(lieu: destination)

                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ListeCardLieu()
}
