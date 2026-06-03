//
//  PlaceListView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlaceListView: View {

    @State var places: [Place]

    var body: some View {
        ScrollView {
            VStack {

                ForEach(places) { place in
                    NavigationLink(value: place) {

                        PlaceCardView(place: place)
                    }
                }
            }
            .padding(20)
        }
        .scrollIndicators(.hidden)
        /// Ensuite ça sera dans un bouton dans la card
        .navigationDestination(for: Place.self) { place in
            PlaceDetailView(place: place)
        }
    }
}

#Preview {
    NavigationStack {
        PlaceListView(places: Place.examples)
    }
}
