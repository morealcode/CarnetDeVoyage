//
//  CarteLieu.swift
//  CarnetDeVoyage
//
//  Created by Alexis Morel on 02/06/2026.
//

import SwiftUI

struct CarteLieu: View {

    var body: some View {
        ScrollView {
            
            VStack {
                
                VStack {
                    Text("La carte d'un lieu")
                        .font(.title2)
                        .bold()

                    Text(
                        "Livrable du jour: une carte qui combine image cadrée, overlay (badge), Label, formes, étoiles, et tous les modifiers vus aujourd'hui"
                    )
                    .padding(.vertical, 6)
                    .foregroundStyle(.secondary)
                }
                .padding()

                ForEach(Destination.examples) { destination in

                    VStack(alignment: .leading) {

//                        Image(systemName: destination.icon)
                        Image(destination.image)
                            .resizable()
                            .scaledToFill()
                            .cardStyle()
                            .background(
                                LinearGradient(
                                    colors: [destination.colorFrom, destination.colorTo],
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
                                .opacity(destination.isVisited ? 100 : 0)
                            }

                        VStack(alignment: .leading, spacing: 6) {
                            Text(destination.city)
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)

                            Label(destination.pays, systemImage: "map")
                                .foregroundStyle(.gray)
                                .font(.body)

                            HStack(spacing: 4) {
                                ForEach(1...5, id:\.self) { index in
                                    Image(systemName: index < destination.review ? "star.fill" : "star")
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
        }
        .scrollIndicators(.hidden)
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
    CarteLieu()
}
