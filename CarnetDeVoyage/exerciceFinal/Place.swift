//
//  Lieu.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct Place: Identifiable {

    var id = UUID()
    var name: String
    var city: String
    var pays: String
    var continent: String
    var image: String
    var review: Int
    var isLiked: Bool
    var isVisited: Bool
    var isPlanned: Bool

    static let examples: [Place] = []

    static let example: Place = Place(
        name: "Tour eiffel",
        city: "Paris",
        pays: "France",
        continent: "Europe",
        image: "paris",
        review: 3,
        isLiked: false,
        isVisited: true,
        isPlanned: false
    )
}
