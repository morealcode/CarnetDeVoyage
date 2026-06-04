//
//  DiscoverView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct DiscoverView: View {
    
    /// Mettre le @State soit dans ContentView soit en Observable
    @State var placesNotVisited: [Place] = Place.examples.filter({ !$0.isVisited })
    
    var body: some View {
        VStack{
            HStack{
                Text("What's next 👀")
                    .font(.title)
                    .bold()
                Spacer()
            }
            // .background(.red)
            
            PlaceListView(places: placesNotVisited)
            
        }
        .padding()
    }
}

#Preview {
    NavigationStack{
        DiscoverView(placesNotVisited: Place.examples)
    }
}
