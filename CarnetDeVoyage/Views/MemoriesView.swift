//
//  MemoriesView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct MemoriesView: View {
    
    var places: [Place]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Remember good times ✨")
                .font(.title)
                .bold()
                .padding()

            PlacesView(places: places)
        }
    }
}

#Preview {
    NavigationStack {
        MemoriesView(places: PlacesStore.preview.places)
            .environment(PlacesStore.preview)
    }
}
