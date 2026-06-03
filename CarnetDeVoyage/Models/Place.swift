//
//  Place.swift
//  CarnetDeVoyage
//
//  Created by Alexis Morel on 03/06/2026.
//

import SwiftUI

struct Place: Identifiable {

    var id = UUID()
    var name: String
    var resume: String
    var city: String
    var pays: String
    var continent: String
    var image: String
    var review: Int
    var isLiked: Bool
    var isVisited: Bool
    var willVisit: Bool
    var tags: [String]
    var budget: Int

    static let examples: [Place] = []

    static let example: Place = Place(
        name: "Tour Eiffel",
        resume: "La tour Eiffel [tuʁɛfɛl] est une tour autoportante de fer puddlé de 330 m de hauteur située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars en bordure de la Seine dans le 7ᵉ arrondissement. Son adresse officielle est 5, avenue Anatole-France.",
        city: "Paris",
        pays: "France",
        continent: "Europe",
        image: "tour-eiffel",
        review: 4,
        isLiked: false,
        isVisited: true,
        willVisit: false,
        tags: ["monument", "historical", "culture"],
        budget: 200
    )
}
