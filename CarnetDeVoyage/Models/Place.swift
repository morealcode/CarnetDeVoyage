//
//  PlaceView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 09/06/2026.
//

import SwiftUI
import Observation

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

let continentList: [String] = ["Worldwide", "Asia", "Africa", "North America", "South America", "Antarctica", "Europe", "Australia"]
