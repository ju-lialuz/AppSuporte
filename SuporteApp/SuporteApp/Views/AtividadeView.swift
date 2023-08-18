//
//  AtividadeView.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 14/08/23.
//

import SwiftUI

struct AtividadeView: View {
    var body: some View {
        NavigationStack{
            VStack(){
                Image(systemName: "clock.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.gray)
                    .padding(.bottom)
                
                Text("Nenhuma atividade de suporte nos últimos 90 dias")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 3)


                
                Text("Reservas, chamadas e bate-papos passados e futuros com o Suporte da Apple serão exibidos aqui.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(width:340)

                    
            }.navigationTitle("Atividade recente")
                .padding(.horizontal, 50)
        }
    }
}

struct AtividadeView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadeView()
    }
}
