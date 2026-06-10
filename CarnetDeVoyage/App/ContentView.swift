//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {

    @Environment(PlacesStore.self) private var placesStore

    @State private var isSheetVisible: Bool = false

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

        TabView {
            Tab("Discover", systemImage: "map") {

                NavigationStack {
                    DiscoverView(places: newPlaces)
                }

            }

            Tab("Planning", systemImage: "calendar") {
                NavigationStack {
                    PlanningView(places: plannedPlaces)
                }

            }

            Tab("Memories", systemImage: "memories") {
                NavigationStack {
                    MemoriesView(places: visitedPlaces)
                }

            }

            Tab("Profile", systemImage: "person.fill") {
                ProfileView(
                    toDiscover: newPlaces.count,
                    toVisit: plannedPlaces.count,
                    visited: visitedPlaces.count
                )
            }

        }
    }
}

#Preview {
    ContentView()
        .environment(PlacesStore.preview)
}
