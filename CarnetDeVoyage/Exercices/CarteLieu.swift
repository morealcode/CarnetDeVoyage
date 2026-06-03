//
//  CarteLieu.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct CarteLieu: View {
    
    let lieu: Destination
    
    var body: some View {
        VStack(alignment: .leading) {

//                        Image(systemName: destination.icon)
            Image(lieu.image)
                .resizable()
                .scaledToFill()
                .cardStyle()
                .background(
                    LinearGradient(
                        colors: [lieu.colorFrom, lieu.colorTo],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .overlay(alignment: .topTrailing) {
                    ZStack {
                        Label(
                            "Visité",
                            systemImage: "checkmark.circle.fill"
                        )
                        .foregroundStyle(.white)
                        .bold()
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(.green)
                    }
                    .clipShape(.rect(cornerRadius: 20))
                    .padding(10)
                    .opacity(lieu.isVisited ? 100 : 0)
                }

            VStack(alignment: .leading, spacing: 6) {
                Text(lieu.city)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)

                Label(lieu.pays, systemImage: "map")
                    .foregroundStyle(.gray)
                    .font(.body)

                HStack(spacing: 4) {
                    ForEach(1...5, id:\.self) { index in
                        Image(systemName: index < lieu.review ? "star.fill" : "star")
                            .foregroundStyle(.yellow)
                    }
                    .font(.caption)
                }
            }
            .padding(16)
        }
        .background(
            Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255)
        )
        .clipShape(.rect(cornerRadius: 16))
        .padding()
    }
}

struct CardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .foregroundStyle(.white)
//            .font(.largeTitle)
            .frame(height: 140, alignment: .center)
            .clipped()
            .frame(maxWidth: .infinity)
    }
}

extension View {
    func cardStyle() -> some View {
        modifier(CardStyle())
    }
}

#Preview {
    CarteLieu(lieu: Destination.example)
}
