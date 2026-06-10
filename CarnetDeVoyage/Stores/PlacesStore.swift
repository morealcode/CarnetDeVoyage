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
    
    /*var places: [Place] = [
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
    ]*/
    
    var places: [Place] = [
        Place(
            name: "Eiffel Tower",
            resume:
                "The Eiffel Tower is a 330-meter-tall wrought-iron tower located in Paris, at the northwestern end of the Champ de Mars near the Seine River in the 7th arrondissement. It is one of the most famous landmarks in France.",
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
            name: "Colosseum",
            resume:
                "The Colosseum is a huge ancient amphitheater located in the heart of Rome. Built in the 1st century, it hosted gladiator fights and remains one of the most famous symbols of the Roman Empire.",
            city: "Rome",
            pays: "Italy",
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
            name: "Sagrada Família",
            resume:
                "The Sagrada Família is an iconic basilica located in Barcelona. Designed by Antoni Gaudí, it is famous for its unique architecture, natural shapes, religious symbolism, and impressive sculpted details.",
            city: "Barcelona",
            pays: "Spain",
            continent: "Europe",
            image: "sagrada-familia",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["monument", "architecture", "culture"],
            budget: 180
        ),

        Place(
            name: "Statue of Liberty",
            resume:
                "The Statue of Liberty is an iconic monument located on Liberty Island in New York. Given by France to the United States in 1886, it symbolizes freedom and democracy.",
            city: "New York",
            pays: "United States",
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
            name: "Grand Canyon",
            resume:
                "The Grand Canyon is a massive canyon located in Arizona, United States. Carved by the Colorado River, it is famous for its spectacular landscapes, colorful cliffs, and breathtaking viewpoints.",
            city: "Arizona",
            pays: "United States",
            continent: "North America",
            image: "grand-canyon",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: false,
            tags: ["nature", "adventure", "landscape"],
            budget: 400
        ),

        Place(
            name: "Chichén Itzá",
            resume:
                "Chichén Itzá is an ancient Maya archaeological site located in the Yucatán Peninsula in Mexico. It is especially known for its large pyramid, El Castillo, and reflects the importance of Maya civilization.",
            city: "Yucatán",
            pays: "Mexico",
            continent: "North America",
            image: "chichen-itza",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: true,
            tags: ["historical", "culture", "architecture"],
            budget: 300
        ),

        Place(
            name: "Machu Picchu",
            resume:
                "Machu Picchu is an ancient Inca city located high in the Andes Mountains of Peru. Rediscovered in the early 20th century, it is now one of the most visited archaeological sites in the world.",
            city: "Cusco",
            pays: "Peru",
            continent: "South America",
            image: "machu-picchu",
            review: 5,
            isLiked: false,
            isVisited: false,
            willVisit: true,
            tags: ["historical", "nature", "adventure"],
            budget: 600
        ),

        Place(
            name: "Christ the Redeemer",
            resume:
                "Christ the Redeemer is a monumental statue located at the top of Mount Corcovado in Rio de Janeiro. It overlooks the city and offers spectacular views of the bay, beaches, and surrounding mountains.",
            city: "Rio de Janeiro",
            pays: "Brazil",
            continent: "South America",
            image: "christ-redempteur",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: false,
            tags: ["monument", "culture", "viewpoint"],
            budget: 350
        ),

        Place(
            name: "Atacama Desert",
            resume:
                "The Atacama Desert is one of the driest deserts in the world. Located in northern Chile, it is known for its moon-like landscapes, colorful lagoons, geysers, and exceptionally clear skies.",
            city: "San Pedro de Atacama",
            pays: "Chile",
            continent: "South America",
            image: "atacama",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["nature", "adventure", "landscape"],
            budget: 500
        ),

        Place(
            name: "Great Wall of China",
            resume:
                "The Great Wall of China is a series of fortifications built over several centuries to protect the northern borders of imperial China. It stretches for thousands of kilometers across mountains and valleys.",
            city: "Beijing",
            pays: "China",
            continent: "Asia",
            image: "grande-muraille",
            review: 5,
            isLiked: true,
            isVisited: false,
            willVisit: true,
            tags: ["monument", "historical", "culture"],
            budget: 500
        ),

        Place(
            name: "Taj Mahal",
            resume:
                "The Taj Mahal is a white marble mausoleum located in Agra, India. Built in the 17th century, it is considered one of the finest examples of Mughal architecture.",
            city: "Agra",
            pays: "India",
            continent: "Asia",
            image: "taj-mahal",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: false,
            tags: ["monument", "historical", "architecture"],
            budget: 350
        ),

        Place(
            name: "Mount Fuji",
            resume:
                "Mount Fuji is the highest mountain in Japan. A cultural and spiritual symbol of the country, it attracts many travelers, hikers, and photographers every year.",
            city: "Fujinomiya",
            pays: "Japan",
            continent: "Asia",
            image: "mont-fuji",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["nature", "mountain", "culture"],
            budget: 450
        ),

        Place(
            name: "Pyramids of Giza",
            resume:
                "The Pyramids of Giza are ancient monuments located near Cairo. They are among the most famous remains of ancient Egypt and show the architectural skill of the pharaohs.",
            city: "Giza",
            pays: "Egypt",
            continent: "Africa",
            image: "pyramides-gizeh",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: false,
            tags: ["monument", "historical", "architecture"],
            budget: 400
        ),

        Place(
            name: "Table Mountain",
            resume:
                "Table Mountain is an iconic mountain overlooking the city of Cape Town in South Africa. Its flat summit offers panoramic views of the ocean, the city, and the surrounding landscapes.",
            city: "Cape Town",
            pays: "South Africa",
            continent: "Africa",
            image: "table-mountain",
            review: 4,
            isLiked: true,
            isVisited: false,
            willVisit: true,
            tags: ["nature", "mountain", "viewpoint"],
            budget: 300
        ),

        Place(
            name: "Victoria Falls",
            resume:
                "Victoria Falls is an impressive waterfall located on the border between Zambia and Zimbabwe. It is known for its power, width, and the cloud of mist created by the falling water.",
            city: "Livingstone",
            pays: "Zambia",
            continent: "Africa",
            image: "chutes-victoria",
            review: 5,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["nature", "waterfall", "adventure"],
            budget: 550
        ),

        Place(
            name: "Sydney Opera House",
            resume:
                "The Sydney Opera House is one of the most famous buildings in Australia. Located by Sydney Harbour, it is known for its original sail-like architecture and its major role in the cultural life of the city.",
            city: "Sydney",
            pays: "Australia",
            continent: "Australia",
            image: "opera-sydney",
            review: 5,
            isLiked: true,
            isVisited: true,
            willVisit: false,
            tags: ["monument", "architecture", "culture"],
            budget: 500
        ),

        Place(
            name: "Great Barrier Reef",
            resume:
                "The Great Barrier Reef is the largest coral reef system in the world. Located off the coast of Australia, it is famous for its marine biodiversity, turquoise waters, and diving spots.",
            city: "Cairns",
            pays: "Australia",
            continent: "Australia",
            image: "grande-barriere-corail",
            review: 5,
            isLiked: true,
            isVisited: false,
            willVisit: true,
            tags: ["nature", "sea", "adventure"],
            budget: 800
        ),

        Place(
            name: "Milford Sound",
            resume:
                "Milford Sound is a spectacular fjord located in New Zealand. Surrounded by steep mountains, forests, and waterfalls, it is one of the most impressive natural landscapes in the country.",
            city: "Fiordland",
            pays: "New Zealand",
            continent: "Australia",
            image: "milford-sound",
            review: 4,
            isLiked: false,
            isVisited: false,
            willVisit: false,
            tags: ["nature", "landscape", "adventure"],
            budget: 700
        )
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
