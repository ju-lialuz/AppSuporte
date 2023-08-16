//
//  CoberturaSheet.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct CoberturaSheet: View {
    @Binding var showingSheet: Bool
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Ver status da cobertura e qualificação para plano AppleCare de seus dispositivos.")
                    .padding(.horizontal)

                List {
                    
                    Section {
                        NavigationLink {
                            //
                        } label: {
                            Text("Inserir número de série")
                        }
                    }
                    
                    Section {
                        NavigationLink {
                            //
                        } label: {
                            VStack {
                                DispositivoItemGarantia(nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13", imagemDispositivo: "iphoneImage", garantia: "Garantia Limitada")
                                
                            }
                            
                        }
                        NavigationLink {
                            //
                        } label: {
                            DispositivoItemGarantia(nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''", imagemDispositivo: "macbookImage", garantia: "Garantia Limitada")
                        }
                    } header: {
                        Text("Meus Dispositivos")
                            .headerProminence(.increased)
                    } footer: {
                        Text("Você pode gerenciar seus dispositivos em Ajustes. Para gerenciar AirPods, acesse Buscar.")
                    }
                    
                    
                }
                
                
                
               
                
            }
            .background(Color(UIColor.quaternarySystemFill))
            .navigationTitle("Verificar a cobertura")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet = false
                    } label: {
                        Text("OK")
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
    }
}

struct CoberturaSheet_Previews: PreviewProvider {
    static var previews: some View {
        CoberturaSheet(showingSheet: Binding(get: {
            return true
        }, set: {_ in
            
        }))
    }
}
