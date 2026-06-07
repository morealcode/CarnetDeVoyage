//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 07/06/2026.
//

import SwiftUI

struct DiscoverView: View {
    
    var places: [Place]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("What's next 👀")
                .font(.title)
                .bold()
                .padding()

            PlacesView(places: places)
        }
    }
}

#Preview {
    NavigationStack {
        PlacesView(places: PlacesStore.preview.places)
    }
}
