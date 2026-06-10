//
//  ProfileView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ProfileView: View {

    var toDiscover: Int
    var toVisit: Int
    var visited: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Hello, my friend 👋")
                .font(.title)
                .fontWeight(.bold)

            if visited > 0 {
                Text(
                    "You've already visited \(visited) \(visited == 1 ? "place" : "places"). Awesome!"
                )
                .font(.body)
            } else {
                Text(
                    "You haven't visited any places yet. What are you waiting for?"
                )
                .font(.body)
            }

            if toVisit > 0 {
                Text(
                    "You still have \(toVisit) \(toVisit == 1 ? "place" : "places") to visit."
                )
                .font(.body)
                .foregroundStyle(.secondary)
            } else {
                Text(
                    "No upcoming places planned yet. Time to add your next adventure!"
                )
                .font(.body)
                .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ProfileView(toDiscover: 13, toVisit: 5, visited: 20)
}
