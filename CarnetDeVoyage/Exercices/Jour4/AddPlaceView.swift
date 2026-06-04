//
//  AddPlaceView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 04/06/2026.
//

import SwiftUI

struct AddPlaceView: View {

    func addPlace() {
        let newPlace: Place = Place(
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
        
        places.append(newPlace)
    }

    @Environment(\.dismiss) private var dismiss

    @Binding var places: [Place]

    @State private var name: String = "Simplon"
    @State private var resume: String = "Centre de formation"
    @State private var city: String = "Montreuil"
    @State private var pays: String = "France"
    @State private var continent: String = "Europe"
    @State private var review: Int = 4
    @State private var isVisited: Bool = true

    /// Ask later
    @State private var image: String = "unknown"
    @State private var isLiked: Bool = false
    @State private var willVisit: Bool = false
    @State private var tags: [String] = []
    @State private var budget: Int = 0

    var body: some View {
        NavigationStack {
            Form {
                Section("Place") {
                    TextField("Name", text: $name)
                    TextField("Resume", text: $resume)
                    TextField("City", text: $city)
                    TextField("Pays", text: $pays)
                    Picker("Continent", selection: $continent) {
                        ForEach(Place.continents, id: \.self) { continent in
                            Text(continent)
                        }
                    }

                }
                Section {
                    Toggle("Already visited ?", isOn: $isVisited)
                }
            }
            .navigationTitle("New place")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        addPlace()

                        dismiss()
                    }
                    .disabled(name.isEmpty)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var places: [Place] = Place.examples
    AddPlaceView(places: $places)
}
