//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct DiscoverView: View {

    @Environment(PlacesStore.self) private var placesStore

    var body: some View {
        VStack {
            HStack {
                Text("What's next 👀")
                    .font(.title)
                    .bold()
                Spacer()
            }

            // Places not visited or not planned to visit
            PlaceListView(places: placesStore.places.filter({ !$0.isVisited || !$0.willVisit }))

        }
        .padding()
    }
}

#Preview {
    let store = PlacesStore()
    NavigationStack {
        DiscoverView()
            .environment(store)
    }
}
