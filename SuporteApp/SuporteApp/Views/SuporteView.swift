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
    @State var showingSheetAssinatura: Bool = false
    @State var showingSheetSenha: Bool = false
    @State var showingSheetCobertura: Bool = false

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
                    .padding(.vertical, 10)
                
                Button {
                    showingSheetDispositivos = true
                } label: {
                    HStack {
                        Text("Meus dispositivos")
                            .font(.title3)
                            .bold()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                .buttonStyle(.plain)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 13) {
                        DispositivoCard(imagemDispositivo: "iphoneImage", nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13")
                        DispositivoCard(imagemDispositivo: "macbookImage", nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''")
                        DispositivoCard(imagemDispositivo: "iphoneImage", nomeDispositivo: "Juju Luz", modeloDispositivo: "Este iPhone 13")
                        DispositivoCard(imagemDispositivo: "macbookImage", nomeDispositivo: "MacBook Pro de Julia Luz", modeloDispositivo: "MacBook Pro 14''")
                    }
                }
                
                Divider()
                    .padding(.vertical, 10)
                
                Text("Ferramentas de suporte")
                    .font(.title3)
                    .bold()
                
                Button {
                    showingSheetAssinatura = true
                } label: {
                    FerramentasCard(title: "Gerenciar assinatura", symbol: "calendar.badge.plus", color1: Color.green, color2: Color.red)
                }
                .buttonStyle(.plain)
                
                Button {
                    //
                } label: {
                    FerramentasCard(title: "Redefinir a senha", symbol: "rectangle.and.pencil.and.ellipsis", color1: Color.blue, color2: Color.gray)
                }
                .buttonStyle(.plain)
                
                Button {
                    //
                } label: {
                    FerramentasCard(title: "Verificar a cobertura", symbol: "apple.logo", color1: Color.red, color2: Color.red)
                }
                .buttonStyle(.plain)


                Spacer()
                
            }
            .navigationTitle("Suporte")
            .sheet(isPresented: $showingSheetProblem) {
                ProblemSheet(showingSheet: $showingSheetProblem)
            }
            .sheet(isPresented: $showingSheetDispositivos) {
                DispositivosSheet(showingSheet: $showingSheetDispositivos)
            }
            .sheet(isPresented: $showingSheetAssinatura) {
                AssinaturaSheet(showingSheet: $showingSheetAssinatura)
            }
            .padding(.horizontal)
  
        }
        
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
