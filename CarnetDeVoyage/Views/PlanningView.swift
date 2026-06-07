//
//  PlanningView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct PlanningView: View {
    
    var places: [Place]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Your next trip ✈️")
                .font(.title)
                .bold()
                .padding()

            PlacesView(places: places)
        }
    }
}

#Preview {
//    @Previewable @State var places: [Place] = Place.examples.filter({ $0.willVisit })
//    NavigationStack {
//        PlanningView(places: $places)
//    }
}
