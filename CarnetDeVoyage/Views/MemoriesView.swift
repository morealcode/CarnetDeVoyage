//
//  MemoriesView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct MemoriesView: View {
    
    @Binding var places: [Place]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Remember good times ✨")
                .font(.title)
                .bold()
                .padding()

            PlacesView(places: $places)
        }
    }
}

#Preview {
    @Previewable @State var places: [Place] = Place.examples.filter({ $0.isVisited })
    NavigationStack {
        MemoriesView(places: $places)
    }
}
