//
//  AddPlaceView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 04/06/2026.
//

import SwiftUI

struct AddPlaceView: View {
    
    @Binding var places: [Place]
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    @Previewable @State var places = Place.examples
    NavigationStack{
        AddPlaceView(places: $places)
    }
}
