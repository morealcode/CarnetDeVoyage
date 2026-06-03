//
//  ListeLieu.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 03/06/2026.
//

import SwiftUI

struct ListeLieu: View {

    @State var searchText: String = ""
    @State var searchResults: [Destination] = []
    var isSearching: Bool {
        return !searchText.isEmpty
    }

    @State var destinations: [Destination] = Destination.examples

    var body: some View {
        NavigationStack {
            List {

                Section(header: Text("Visité")) {

                    if isSearching {
                        ForEach(searchResults.filter({ $0.isVisited })) {
                            destination in

                            ItemListLieu(destination: destination)
                        }
                    } else {
                        ForEach(destinations.filter({ $0.isVisited })) {
                            destination in

                            ItemListLieu(destination: destination)
                        }
                    }
                }

                Section(header: Text("A voir")) {

                    if isSearching {
                        ForEach(searchResults.filter({ !$0.isVisited })) {
                            destination in

                            ItemListLieu(destination: destination).swipeActions(
                                edge: .trailing
                            ) {
                                Button {
                                    print("Change isVisited to true")
                                } label: {
                                    Label(
                                        "Visité",
                                        systemImage: "checkmark.circle.fill"
                                    )
                                }
                            }
                        }

                    } else {
                        ForEach(destinations.filter({ !$0.isVisited })) {
                            destination in

                            ItemListLieu(destination: destination).swipeActions(
                                edge: .trailing
                            ) {
                                Button {
                                    print("Change isVisited to true")
                                } label: {
                                    Label(
                                        "Visité",
                                        systemImage: "checkmark.circle.fill"
                                    )
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Lieux")
            .searchable(text: $searchText, prompt: "Ecrivez un lieu...")
            .textInputAutocapitalization(.never)
            .onChange(of: searchText) {
                searchResults = destinations.filter({
                    $0.city.lowercased().contains(searchText)
                })
            }
        }
    }
}

#Preview {
    ListeLieu()
}
