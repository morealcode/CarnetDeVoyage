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
                DiscoverView()
            }

            Tab("Planning", systemImage: "calendar") {
                PlanningView()
            }

            Tab("Memories", systemImage: "memories") {
                MemoriesView()
            }

            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
        }
    }
}

#Preview {
    ContentView()
}
