//
//  TextFieldView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 05/06/2026.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var isSecure: Bool = true
    @State private var commentaire: String = "Lorem ipsum dolor sit amet color vitae"
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            TextField("Commentaire", text: $commentaire)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
            
            // Vertical adaptative
            TextField("Commentaire", text: $commentaire, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
            
            Toggle("Secure Field", isOn: $isSecure)
            
            if isSecure {
                SecureField("Password", text: $password)
            } else {
                TextField("Type password...", text: $password)
            }
            
        }
        .frame(width: 200)
    }
}

#Preview {
    TextFieldView()
}
