//
//  PlanningView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlanningView: View {

    var places: [Place]

    var body: some View {

        PlacesView(title: "Your next trip ✈️", places: places)

    }
}

#Preview {
    NavigationStack {
        PlanningView(places: PlacesStore.preview.places)
            .environment(PlacesStore.preview)
    }
}
