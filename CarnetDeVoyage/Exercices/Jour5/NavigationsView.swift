//
//  NavigationsView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 08/06/2026.
//

import SwiftUI

enum RouteExo: Hashable {
    case detail(String)
    case tous
}

@Observable
final class RouterExo {
    var path = NavigationPath()
    var sports: [String] = [
        "Basketball", "Football", "Tennis", "Volleyball",
    ]

    func push(_ route: RouteExo) {
        path.append(route)
    }

    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }

    func popToRoot() {
        path = NavigationPath()
    }
}

struct NavigationsView: View {

    // @State private var path = NavigationPath()
    @State private var router: RouterExo = RouterExo()
    @State private var isSheetVisible: Bool = false
    @State private var sports: [String] = [
        "Basketball", "Football", "Tennis", "Volleyball",
    ]

    var body: some View {

        NavigationStack(path: $router.path) {
            List {
                Section("Navigation par détail") {
                    ForEach(sports, id: \.self) { sport in
                        NavigationLink {
                            DetailSport(sport: sport)
                        } label: {
                            Text(sport)
                                .foregroundStyle(.primary)
                        }
                    }
                }

//                Section("Navigation par valeur") {
//                    ForEach(sports, id: \.self) { sport in
//                        NavigationLink(value: sport) {
//                            Text(sport)
//                                .foregroundStyle(.primary)
//                        }
//                    }
//                }

                Section("Navigation par router") {
                    ForEach(sports, id: \.self) { sport in
                        Button {
                            router.push(.detail(sport))
                        } label: {
                            Text(sport)
                                .foregroundStyle(.primary)
                        }
                    }
                }
            }
//            .navigationDestination(for: String.self) { sport in
//                DetailSport(sport: sport)
//            }
            .navigationDestination(for: RouteExo.self) { route in

                switch route {
                case .detail(let sport):
                    DetailSport(sport: sport)
                case .tous:
                    ForEach(sports, id: \.self) { sport in
                        DetailSport(sport: sport)
                    }
                }

            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add sport", systemImage: "plus") {
                        print("Add sport sheet")
                        isSheetVisible.toggle()
                    }
                }
            }
            .sheet(isPresented: $isSheetVisible) {
                addSport{ sport in
                    sports.append(sport)
                }
            }
        }
        .environment(router)
    }
}

struct DetailSport: View {
    
    @Environment(RouterExo.self) private var router

    let sport: String

    var body: some View {
        VStack {
            Text(sport)
                .font(.largeTitle)
                .navigationTitle(sport)
            Button("View aléatoire") {
                router.push(.detail(router.sports.randomElement()!))
            }
            Button("Revenir à root") {
                router.popToRoot()
            }
        }
    }
}

struct addSport: View {
    var onAjout: (String) -> Void
    
    @Environment(\.dismiss) private var dismiss
    @State private var nomSport = ""

    var body: some View {
        NavigationStack {
            Form {
                TextField("Nom du lieu", text: $nomSport)
            }
            .navigationTitle("Nouveau sport")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Annuler") { dismiss() }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Ajouter") {
                        onAjout(nomSport)
                        dismiss()
                    }
                    .disabled(nomSport.isEmpty)
                }
            }
        }
    }
}

#Preview {
    NavigationsView()
}
