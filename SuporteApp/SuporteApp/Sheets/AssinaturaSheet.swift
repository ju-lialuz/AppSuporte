//
//  AssinaturaSheet.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct AssinaturaSheet: View {
    @Binding var showingSheet: Bool
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section("INATIVA") {
                        
                        NavigationLink {
                            AssinaturaView()
                        } label: {
                            AssinaturaItem()
                        }
                    }
                    Section {
                        Toggle(
                            isOn: $isOn,
                            label: {
                                Text("Recibos de renovação")
                            }
                        )
                    } header: {
                        Text("OPÇÕES")
                    } footer: {
                        Text("Um recibo lhe será enviado toda vez que uma de suas assinaturas for renovada. Os recibos estão sempre disponíveis nos ajustes do ID Apple > Histórico de compras.")
                    }
                    
                }
            }
            .navigationBarTitle("Assinaturas")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet = false
                    } label: {
                        Text("Concluído")
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
    }
}

struct AssinaturaSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AssinaturaSheet(showingSheet: Binding(get: {
                return true
            }, set: {_ in
                
            }))
        }
    }
}
