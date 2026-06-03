//
//  PlaceCardView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlaceCardView: View {
    
    @State var place: Place
    
    var body: some View {
        HStack{
            Text(place.name)
            Text(place.city)
            Text(place.pays)
            Text(place.continent)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .padding()
        .background(.red.opacity(0.4))
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    PlaceCardView(place: Place.example)
}
