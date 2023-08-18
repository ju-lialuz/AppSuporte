//
//  DispositivosSheet.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 14/08/23.
//

import SwiftUI

struct DispositivosSheet: View {
    @Binding var showingSheet: Bool
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                DispositivoItem(nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13", imagemDispositivo: "iphoneImage")
                Divider()
                    .padding(.leading, 50)
                
                DispositivoItem(nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''", imagemDispositivo: "macbookImage")
                Divider()
                    .padding(.leading, 50)
                
                DispositivoItem(nomeDispositivo: "Juju Luz", modeloDispositivo: "Este iPhone 13", imagemDispositivo: "iphoneImage")
                Divider()
                    .padding(.leading, 50)
                
                DispositivoItem(nomeDispositivo: "MacBook Pro de Júlia Luz", modeloDispositivo: "MacBook Pro 14''", imagemDispositivo: "macbookImage")
                Divider()
                    .padding(.leading, 50)
                
                Text("Você pode gerenciar seus dispositivos em Ajustes. Para gerenciar AirPods, acesse Buscar.")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
    
                Spacer()
            }
            .navigationTitle("Meus dispositivos")
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }

                    
                }
            }
        }
    }
}

struct DispositivosSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DispositivosSheet(showingSheet: Binding(get: {
                return true
            }, set: {_ in
                
            }))
        }
    }
}
