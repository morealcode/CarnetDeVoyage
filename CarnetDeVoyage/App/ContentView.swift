//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var places = Place.examples.filter({ !$0.isVisited && !$0.willVisit })
    @State private var visitedPlaces = Place.examples.filter({ $0.isVisited })
    @State private var plannedPlaces = Place.examples.filter({ $0.willVisit })
    
    var body: some View {

        TabView {
            Tab("Discover", systemImage: "map") {
                NavigationStack {
                    DiscoverView(places: $places)
                }
            }

            Tab("Planning", systemImage: "calendar") {
                NavigationStack {
                    PlanningView(places: $visitedPlaces)
                }
            }

            Tab("Memories", systemImage: "memories") {
                NavigationStack {
                    MemoriesView(places: $plannedPlaces)
                }
            }

            Tab("Profile", systemImage: "person.fill") {
                NavigationStack {
                    ProfileView()
                }
            }
        }
        .font(.system(.body, design: .rounded))
    }
}

#Preview {
    ContentView()
}
