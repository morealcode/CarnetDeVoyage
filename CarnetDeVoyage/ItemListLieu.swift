//
//  ItemListLieu.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ItemListLieu: View {
    var destination: Destination
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            Text("\(destination.city) - \(destination.pays)")

            HStack {
                ForEach(1...5, id: \.self) { index in
                    Image(
                        systemName: index < destination.review
                            ? "star.fill" : "star"
                    )
                    .foregroundStyle(.yellow)
                }
            }
        }
        .swipeActions(edge: .leading) {
            Button(role: .destructive) {
                print("Delete")
            } label: {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}
