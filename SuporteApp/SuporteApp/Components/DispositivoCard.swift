//
//  DispositivoCard.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct DispositivoCard: View {
    @State var imagemDispositivo: String
    @State var nomeDispositivo: String
    @State var modeloDispositivo: String
    
    var body: some View {
        VStack {
            Image(imagemDispositivo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 70)
                .padding(.bottom, 5)
                //.border(.red)
            Text(nomeDispositivo)
                .font(.title3)
                .bold()
                .lineLimit(1)
                .padding(.horizontal)
            Text(modeloDispositivo)
                .foregroundColor(.gray)
                .font(.system(size: 15))
        }
        .frame(width: 170, height: 170)
        .background(Color(UIColor.quaternarySystemFill))
        .cornerRadius(15)

    }
}

struct DispositivoCard_Previews: PreviewProvider {
    static var previews: some View {
        DispositivoCard(imagemDispositivo: "iphoneImage", nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13")
        DispositivoCard(imagemDispositivo: "macbookImage", nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''")
        DispositivoCard(imagemDispositivo: "iphoneImage", nomeDispositivo: "Juju Luz", modeloDispositivo: "Este iPhone 13")
        DispositivoCard(imagemDispositivo: "macbookImage", nomeDispositivo: "MacBook Pro de Julia Luz", modeloDispositivo: "MacBook Pro 14''")

    }
}
