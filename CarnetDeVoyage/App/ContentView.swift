//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            Tab("Discover", systemImage: "map") {
                NavigationStack {
                    DiscoverView()
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
    }
}

#Preview {
    ContentView()
}
