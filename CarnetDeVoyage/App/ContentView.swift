//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var places = Place.examples
    
    var body: some View {

        TabView {
            Tab("Discover", systemImage: "map") {
                NavigationStack {
                    DiscoverView(places: $places)
                }
            }

            Tab("Planning", systemImage: "calendar") {
                NavigationStack {
                    PlanningView()
                }
            }

            Tab("Memories", systemImage: "memories") {
                NavigationStack {
                    MemoriesView()
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
