//
//  PlaceDetailView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlaceDetailView: View {
    
    @State var place: Place
    
    var body: some View {
        VStack{
            Text(place.name)
            Text(place.resume)
        }
        .navigationTitle(place.name)
    }
}

#Preview {
    NavigationStack{
        PlaceDetailView(place: Place.example)
    }
}
