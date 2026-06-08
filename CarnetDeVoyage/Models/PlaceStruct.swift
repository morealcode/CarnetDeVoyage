//
//  Place.swift
//  CarnetDeVoyage
//
//  Created by Alexis Morel on 03/06/2026.
//

import SwiftUI
import Observation

struct PlaceStruct: Identifiable, Hashable {

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
    
    static var continents: [String] = ["Worldwide", "Asia", "Africa", "North America", "South America", "Antarctica", "Europe", "Australia"]

    static let examples: [PlaceStruct] = [
        PlaceStruct(
            name: "Tour Eiffel",
            resume:
                "La tour Eiffel est une tour autoportante de fer puddlé de 330 m de hauteur située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars en bordure de la Seine dans le 7ᵉ arrondissement. Son adresse officielle est 5, avenue Anatole-France.",
            city: "Paris",
            pays: "France",
            continent: "Europe",
            image: "tour-eiffel",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["monument", "historical", "culture"],
            budget: 200
        ),

        PlaceStruct(
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

        PlaceStruct(
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

        PlaceStruct(
            name: "Machu Picchu",
            resume:
                "Machu Picchu est une ancienne cité inca perchée dans les montagnes des Andes au Pérou. Redécouverte au début du XXe siècle, elle est aujourd’hui l’un des sites archéologiques les plus visités au monde.",
            city: "Cusco",
            pays: "Pérou",
            continent: "South America",
            image: "machu-picchu",
            review: 5,
            isLiked: false,
            isVisited: true,
            willVisit: true,
            tags: ["historical", "nature", "adventure"],
            budget: 600
        ),
        
        PlaceStruct(
            name: "Grande Muraille de Chine",
            resume:
                "La Grande Muraille de Chine est une série de fortifications construites sur plusieurs siècles pour protéger les frontières du nord de la Chine impériale. Elle s’étend sur des milliers de kilomètres.",
            city: "Pékin",
            pays: "Chine",
            continent: "Asia",
            image: "grande-muraille",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: true,
            tags: ["monument", "historical", "culture"],
            budget: 500
        ),
    ]

    static let example: PlaceStruct = PlaceStruct(
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
    )
}

let continentList: [String] = ["Worldwide", "Asia", "Africa", "North America", "South America", "Antarctica", "Europe", "Australia"]

@Observable
class Place: Identifiable {
    var id: UUID = UUID()
    var name: String
    var resume: String
    var city: String
    var pays: String
    var continent: String
    var image: String
    var review: Double
    var isLiked: Bool
    var isVisited: Bool
    var willVisit: Bool
    var tags: [String]
    var budget: Double
    
    init(name: String, resume: String, city: String, pays: String, continent: String, image: String, review: Double, isLiked: Bool, isVisited: Bool, willVisit: Bool, tags: [String], budget: Double) {
        self.name = name
        self.resume = resume
        self.city = city
        self.pays = pays
        self.continent = continent
        self.image = image
        self.review = review
        self.isLiked = isLiked
        self.isVisited = isVisited
        self.willVisit = willVisit
        self.tags = tags
        self.budget = budget
    }
}
