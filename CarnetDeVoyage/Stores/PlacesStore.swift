//
//  PlaceStore.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 06/06/2026.
//

import Observation
import SwiftUI

@Observable
class PlacesStore: Identifiable {
    var places: [Place] = [
        Place(
            name: "Tour Eiffel",
            resume:
                "La tour Eiffel est une tour autoportante de fer puddlé de 330 m de hauteur située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars en bordure de la Seine dans le 7ᵉ arrondissement. Son adresse officielle est 5, avenue Anatole-France.",
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
        ),

        Place(
            name: "Colisée",
            resume:
                "Le Colisée est un immense amphithéâtre antique situé au cœur de Rome. Construit au Ier siècle, il accueillait des combats de gladiateurs et reste aujourd’hui l’un des symboles les plus célèbres de l’Empire romain.",
            city: "Rome",
            pays: "Italie",
            continent: "Europe",
            image: "colisee",
            review: 5,
            isLiked: true,
            isVisited: false,
            willVisit: true,
            tags: ["monument", "historical", "architecture"],
            budget: 150
        ),

        Place(
            name: "Statue de la Liberté",
            resume:
                "La Statue de la Liberté est un monument emblématique situé sur Liberty Island à New York. Offerte par la France aux États-Unis en 1886, elle symbolise la liberté et la démocratie.",
            city: "New York",
            pays: "États-Unis",
            continent: "North America",
            image: "statue-liberte",
            review: 5,
            isLiked: true,
            isVisited: false,
            willVisit: false,
            tags: ["monument", "culture", "historical"],
            budget: 250
        ),

        Place(
            name: "Machu Picchu",
            resume:
                "Machu Picchu est une ancienne cité inca perchée dans les montagnes des Andes au Pérou. Redécouverte au début du XXe siècle, elle est aujourd’hui l’un des sites archéologiques les plus visités au monde.",
            city: "Cusco",
            pays: "Pérou",
            continent: "North America",
            image: "machu-picchu",
            review: 5,
            isLiked: false,
            isVisited: false,
            willVisit: true,
            tags: ["historical", "nature", "adventure"],
            budget: 600
        ),

        Place(
            name: "Grande Muraille de Chine",
            resume:
                "La Grande Muraille de Chine est une série de fortifications construites sur plusieurs siècles pour protéger les frontières du nord de la Chine impériale. Elle s’étend sur des milliers de kilomètres.",
            city: "Pékin",
            pays: "Chine",
            continent: "Asia",
            image: "grande-muraille",
            review: 5,
            isLiked: true,
            isVisited: false,
            willVisit: true,
            tags: ["monument", "historical", "culture"],
            budget: 500
        ),
    ]

    let continents: [String] = [
        "Worldwide", "Asia", "Africa", "North America", "South America",
        "Antarctica", "Europe", "Australia",
    ]

    var search: String = ""

    func findPlace(id: UUID) -> Place? {
        places.first { $0.id == id }
    }

    func addPlace(_ newPlace: Place) {
        places.append(newPlace)
    }

    func deletePlace(_ id: UUID) {
        places.removeAll { $0.id == id }
    }
}

extension PlacesStore {
    static var preview: PlacesStore {
        let store = PlacesStore()
        return store
    }
}
