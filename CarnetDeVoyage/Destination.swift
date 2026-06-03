//
//  Lieu.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct Destination: Identifiable {
    var id = UUID()
    var city: String
    var pays: String
    var icon: String
    var image: String
    var review: Int
    var colorFrom: Color
    var colorTo: Color
    var isVisited: Bool

    static let examples = [
        Destination(
            city: "Lisbonne",
            pays: "Portugal",
            icon: "sun.max.fill",
            image: "lisbonne",
            review: 5,
            colorFrom: .orange,
            colorTo: .pink,
            isVisited: true
        ),
        Destination(
            city: "Kyoto",
            pays: "Japon",
            icon: "leaf.fill",
            image: "kyoto",
            review: 4,
            colorFrom: .green,
            colorTo: .cyan,
            isVisited: false
        ),
        Destination(
            city: "Paris",
            pays: "France",
            icon: "snowflake",
            image: "paris",
            review: 3,
            colorFrom: .blue,
            colorTo: .purple,
            isVisited: true
        ),
        Destination(
            city: "New York",
            pays: "Etats-Unis",
            icon: "star.fill",
            image: "newyork",
            review: 5,
            colorFrom: .red,
            colorTo: .pink,
            isVisited: true
        ),
    ]

}
