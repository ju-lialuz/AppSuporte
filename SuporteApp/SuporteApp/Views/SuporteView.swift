//
//  Suporte.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 14/08/23.
//

import SwiftUI

struct SuporteView: View {
    @State var showingSheetProblem: Bool = false
    @State var showingSheetDispositivos: Bool = false

    
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .leading) {
                
                Button {
                    showingSheetProblem = true
                } label: {
                    Text("Conte o que está acontecendo")
                        .foregroundColor(.secondary)
                    Spacer()
                    Image(systemName: "mic.fill")
                        .foregroundColor(.secondary)
                    
                }
                .frame(width: .infinity)
                    .padding(10)
                    .background(Color(UIColor.quaternarySystemFill))
                    .cornerRadius(10)
                
                Divider()
                
                Button {
                    showingSheetDispositivos = true
                } label: {
                    HStack {
                        Text("Meus dispositivos")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.black)

                }
                                
                Spacer()
                
            }
            .sheet(isPresented: $showingSheetProblem) {
                ProblemSheet(showingSheet: $showingSheetProblem)
            }
            .sheet(isPresented: $showingSheetDispositivos) {
                DispositivosSheet(showingSheet: $showingSheetDispositivos)
            }
            .padding(.horizontal)
  
        }
        .navigationTitle("Suporte")
        .toolbar {
            Button {
                //
            } label: {
                Image(systemName: "person.circle")
            }
        }
        
    }
}

struct SuporteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SuporteView()
        }
    }
}
