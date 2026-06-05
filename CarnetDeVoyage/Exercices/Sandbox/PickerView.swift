//
//  PickerView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct PickerView: View {

    @State private var selectedDate: Date = Date()
    @State private var selectedColor: Color = Color.red
    @State private var selectedSport: String = ""

    private let sports: [String] = ["Basketball", "Handball", "Volleyball"]

    var body: some View {
        
        VStack{
            
            List {
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.inline)
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.menu)
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.navigationLink)
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.palette)
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.segmented)
                
                Picker("Select a sport", selection: $selectedSport){
                    
                    ForEach(sports, id: \.self ){ sport in
                        Text(sport)
                    }
                }
                .pickerStyle(.wheel)
                
                DatePicker("Date", selection: $selectedDate)
                ColorPicker("Color", selection: $selectedColor)
            }
        }
    }
}

#Preview {
    PickerView()
}
