//
//  PlaceDetailView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlaceDetailView: View {

    var place: Place
    @State private var isShowingSheet: Bool = true

    var body: some View {
        ZStack(alignment: .bottom) {
            Color(.white.opacity(0))

            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Text(place.name)
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("\(place.budget) €")
                        .font(.title2)
                        .bold()
                }

                HStack(spacing: 14) {
                    ForEach(place.tags, id: \.self) { tag in
                        Label(tag.capitalized, systemImage: "checkmark")
                            .padding(.vertical, 2)
                            .padding(.horizontal, 8)
                            .font(.callout)

                            .padding(8)
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.white)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(
                                        .gray.opacity(0.3),
                                        lineWidth: 1
                                    )
                            )
                            .labelStyle(.titleOnly)
                    }
                }

                Text("Resume")
                    .font(.title3)
                    .bold()

                Text(place.resume)

                HStack {

                    Spacer()

                    // Add/Remove place from planning
                    Button(
                        place.willVisit ? "Planned" : "Not planned",
                        systemImage: place.willVisit ? "checkmark" : "multiply"
                    ) {

                        print("Update planning")
                        place.willVisit.toggle()

                    }
                    .buttonStyle(.glassProminent)
                    .tint(place.willVisit ? .primary : .secondary)
                    .controlSize(.large)

                    // Add/Remove place from memories
                    Button(
                        place.isVisited ? "Visited" : "Not visited",
                        systemImage: place.isVisited ? "checkmark" : "multiply"
                    ) {

                        print("Update planning")
                        place.isVisited.toggle()

                    }
                    .buttonStyle(.glassProminent)
                    .tint(place.isVisited ? .primary : .secondary)
                    .controlSize(.large)

                    Spacer()

                }

            }
            .padding(20)
            .background(.white)
            .clipShape(
                UnevenRoundedRectangle(
                    topLeadingRadius: 20,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 20
                )
            )
        }
        .background(
            Image(place.image)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .top)
        )
    }
}

#Preview {
    PlaceDetailView(place: PlacesStore.preview.places[0])
}
