//
//  Jour3View.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 04/06/2026.
//

import SwiftUI

struct Jour4View: View {

    @State var places: [Place] = Place.examples
    @State var isSheetVisible: Bool = false

    var body: some View {
        List {

            ForEach($places) { $place in

                Toggle(isOn: $place.isVisited) {
                    Text(place.name)
                }
            }
            .onDelete{
                places.remove(atOffsets: $0)
            }
        }
        .toolbar{
            Button("+"){
                isSheetVisible.toggle()
            }
        }
        .sheet(isPresented: $isSheetVisible) {
            AddPlaceView(places: $places)
        }
    }
}

#Preview {
    NavigationStack{
        Jour4View(places: Place.examples)
    }
}
