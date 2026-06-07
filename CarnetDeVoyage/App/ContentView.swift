//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {

    @Environment(PlacesStore.self) private var placesStore

    var newPlaces: [Place] {
        placesStore.places.filter { !$0.isVisited && !$0.willVisit }
    }

    var visitedPlaces: [Place] {
        placesStore.places.filter { $0.isVisited }
    }

    var plannedPlaces: [Place] {
        placesStore.places.filter { $0.willVisit }
    }

    var body: some View {

        NavigationStack {
            TabView {
                Tab("Discover", systemImage: "map") {
                    DiscoverView(places: newPlaces)
                }

                Tab("Planning", systemImage: "calendar") {
                    PlanningView(places: plannedPlaces)
                }

                Tab("Memories", systemImage: "memories") {
                    MemoriesView(places: visitedPlaces)
                }

                Tab("Profile", systemImage: "person.fill") {
                    ProfileView()
                }
            }
            .font(.system(.body, design: .rounded))
        }
    }
}

#Preview {
    ContentView()
        .environment(PlacesStore.preview)
}
