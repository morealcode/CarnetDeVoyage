//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 07/06/2026.
//

import SwiftUI

struct DiscoverView: View {
    
    @Binding var places: [Place]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("What's next 👀")
                .font(.title)
                .bold()
                .padding()

            PlacesView(places: $places)
        }
    }
}

#Preview {
    @Previewable @State var places: [Place] = Place.examples.filter({ !$0.isVisited && !$0.willVisit })
    NavigationStack {
        PlacesView(places: $places)
    }
}
