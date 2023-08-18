//
//  ContentView.swift
//  SuporteApp
//
//  Created by Júlia Luz on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SuporteView()
                .tabItem {
                    Label("Suporte", systemImage: "square.grid.2x2.fill")
                }
            LocalizacoesView()
                .tabItem {
                    Label("Suporte", systemImage: "mappin.and.ellipse")
                }
            AtividadeView()
                .tabItem {
                    Label("Atividade", systemImage: "clock")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
