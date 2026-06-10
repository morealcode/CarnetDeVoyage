//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlacesView: View {

    var places: [Place]
    @State var selectedContinent: String = "Worldwide"

    var placesFiltered: [Place] {
        places.filter {
            selectedContinent == "Worldwide"
                || $0.continent == selectedContinent
        }
    }

    var body: some View {

        ScrollView {

            VStack(alignment: .leading) {

                ScrollView(.horizontal) {
                    HStack(spacing: 16) {

                        ForEach(continentList, id: \.self) { continent in
                            Button {
                                print("Select", continent)
                                withAnimation {
                                    selectedContinent = continent
                                }
                            } label: {
                                HStack(spacing: 8) {
                                    Image(continent.lowercased())
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())

                                    Text(continent)
                                        .foregroundStyle(.black)
                                        .padding(.trailing, 15)
                                }
                                .padding(3)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(.white)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(
                                            .black.opacity(
                                                continent == selectedContinent
                                                    ? 1 : 0.3
                                            ),
                                            lineWidth: continent
                                                == selectedContinent ? 1.5 : 1
                                        )
                                )
                            }

                        }
                    }
                    .padding()
                }

                Group {

                    ForEach(placesFiltered) { place in

                        VStack {

                            HStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                    Text(String((place.review)))
                                }
                                .padding()
                                .glassEffect()
                                Spacer()

                                Button(
                                    "Like",
                                    systemImage: "heart.fill",
                                    action: {
                                        place.isLiked.toggle()
                                    }
                                )
                                .padding()
                                .labelStyle(.iconOnly)
                                .foregroundStyle(place.isLiked ? .red : .white)
                                .glassEffect()
                            }

                            Spacer()

                            HStack {
                                VStack(alignment: .leading, spacing: 8) {
                                    Label(
                                        "\(place.city), \(place.pays)",
                                        systemImage: "mappin.and.ellipse"
                                    )
                                    .bold()

                                    Text(place.name)
                                        .font(.title2)
                                        .bold()
                                }
                                .foregroundStyle(.white)

                                Spacer()

                                
                                NavigationLink {
                                    PlaceDetailView(place: place)
                                } label: {
                                    Image(systemName: "arrow.up.right")
                                }
                                .padding()
                                .glassEffect()
                                .foregroundStyle(.primary)

                            }

                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 270)
                        .padding()
                        .background(
                            Image(place.image)
                                .resizable()
                                .scaledToFill()
                                .overlay(
                                    LinearGradient(
                                        colors: [
                                            .black.opacity(0),
                                            .black.opacity(0.5),
                                            .black.opacity(0.6),
                                        ],
                                        startPoint: .center,
                                        endPoint: .bottom
                                    )
                                )

                        )
                        .clipShape(.rect(cornerRadius: 25))

                    }

                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                
                
                
            }
            
            
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    NavigationStack() {
        PlacesView(places: PlacesStore.preview.places)
            .environment(PlacesStore.preview)
    }
}
