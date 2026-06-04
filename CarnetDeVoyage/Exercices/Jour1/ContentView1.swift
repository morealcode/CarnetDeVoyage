//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Alexis Morel on 01/06/2026.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.gymnastics")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Alexis")
            Text("Breakdance")
            Text("aka Bboy Moreal")
        }
        .padding()
    }
}

#Preview {
    ContentView1()
}
