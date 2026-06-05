//
//  SwiftUIView.swift
//  CarnetDeVoyage
//
//  Created by apprenant130 on 02/06/2026.
//

import SwiftUI

struct TestStacksView: View {
    var body: some View {

        VStack{
            VStack {

                Spacer()
                
                Text("red")
                    .padding()
                    .background(.red, in: RoundedRectangle(cornerRadius: 12))
                
                Text("blue")
                    .frame(width: 200)
                    .padding()
                    .background(.blue)
                
                Spacer()
                
            }
            .padding()
            .background(.yellow)
            
            HStack{
                VStack {

                    Spacer()
                    
                    Text("red")
                        .padding()
                        .background(.red)
                    
                    Text("blue")
                        .padding()
                        .background(.blue)
                    
                    Spacer()
                    
                }
                .padding()
                .background(.brown)
                
                Spacer()
                
                VStack {

                    Spacer()
                    
                    Text("red")
                        .padding()
                        .background(.red)
                    
                    Text("blue")
                        .padding()
                        .background(.blue)
                    
                    Spacer()
                    
                }
                .padding()
                .background(.brown)
            }
            .background(.green)
        }
        .ignoresSafeArea()

    }
}

#Preview {
    TestStacksView()
}
