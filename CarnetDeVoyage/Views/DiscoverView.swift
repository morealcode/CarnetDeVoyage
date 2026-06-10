//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 07/06/2026.
//

import SwiftUI

struct DiscoverView: View {

    var places: [Place]

    var body: some View {

        PlacesView(title: "What's next 👀", places: places)

    }
}

#Preview {
    NavigationStack {
        DiscoverView(places: PlacesStore.preview.places)
            .environment(PlacesStore.preview)
    }
}
