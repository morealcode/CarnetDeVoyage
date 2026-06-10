//
//  AddPlaceView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 10/06/2026.
//

import SwiftUI

struct AddPlace: View {

    @Environment(PlacesStore.self) var placesStore

    var onAjout: (Place) -> Void

    @Environment(\.dismiss) private var dismiss

    @State var name: String = ""
    @State var resume: String = ""
    @State var city: String = ""
    @State var pays: String = ""
    @State var continent: String = "Europe"
    @State var image: String = "worldwide"

    @State var review: Double = 1

    @State var isLiked: Bool = false

    @State var isVisited: Bool = false
    @State var willVisit: Bool = false

    @State var tags: [String] = ["monument", "historical", "culture"]

    @State var budget: Double = 100

    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                TextField("Resume", text: $resume, axis: .vertical)
                TextField("City", text: $city)
                TextField("Pays", text: $pays)

                Picker("Continent", selection: $continent) {
                    ForEach(placesStore.continents, id: \.self) { continent in
                        Text(continent)
                    }
                }

                Toggle(isOn: $isVisited) {
                    Text("Visited")
                }

                if isVisited {
                    VStack {
                        Slider(
                            value: $review,
                            in: 0...5,
                            step: 0.5
                        )
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            Text(String(review))
                        }
                    }
                }

                Toggle(isOn: $willVisit) {
                    Text("Plan to visit")
                }

                VStack {
                    Slider(
                        value: $budget,
                        in: 0...10000,
                        step: 50
                    )
                    Text("\(Int(budget)) €")
                }

            }
            .navigationTitle("New place")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        onAjout(
                            Place(
                                name: name,
                                resume: resume,
                                city: city,
                                pays: pays,
                                continent: continent,
                                image: image,
                                review: review,
                                isLiked: isLiked,
                                isVisited: isVisited,
                                willVisit: willVisit,
                                tags: tags,
                                budget: budget
                            )
                        )
                        dismiss()
                    }
                    .disabled(name.isEmpty)
                }
            }
        }
    }
}


#Preview {
//    AddPlace()
}
