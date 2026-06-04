//
//  Jour3View.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 04/06/2026.
//

import SwiftUI

struct Jour4View: View {

    @State var places: [Place] = Place.examples
    @State var isEditing: Bool = false
    @State var isSheetVisible: Bool = false

    var body: some View {
        List {

            ForEach($places) { $place in
                HStack {

                    Toggle(isOn: $place.isVisited) {

                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(place.name)
                                    .font(.title3)
                                HStack(
                                    alignment: .firstTextBaseline,
                                    spacing: 4
                                ) {
                                    Text("\(place.review)")
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                }
                            }

                            Spacer()

                            if place.isVisited {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundStyle(.green)
                            }
                        }
                    }
                }
            }
            .onDelete {
                places.remove(atOffsets: $0)
            }
        }
        .toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                Button("Edit") {
//                    isEditing.toggle()
//                }
//            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("+") {
                    isSheetVisible.toggle()
                }
            }
        }
        .sheet(isPresented: $isSheetVisible) {
            AddPlaceView(places: $places)
        }
    }
}

#Preview {
    NavigationStack {
        Jour4View(places: Place.examples)
    }
}
