//
//  CarnetDeVoyageApp.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 01/06/2026.
//

import SwiftUI

@main
struct CarnetDeVoyageApp: App {
    @State private var placesStore = PlacesStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(placesStore)
        }
    }
}
