//
//  DispositivoItemGarantia.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 16/08/23.
//

import SwiftUI

struct DispositivoItemGarantia: View {
    @State var nomeDispositivo: String
    @State var modeloDispositivo: String
    @State var imagemDispositivo: String
    @State var garantia: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(imagemDispositivo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 30)
        
            VStack(alignment: .leading) {
                Text(nomeDispositivo)
                Text(modeloDispositivo)
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                Text(garantia)
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                
            }
        }
        //.border(.red)
    }
}

struct DispositivoItemGarantia_Previews: PreviewProvider {
    static var previews: some View {
        DispositivoItemGarantia(nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13", imagemDispositivo: "iphoneImage", garantia: "Garantia Limitada")
        DispositivoItemGarantia(nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''", imagemDispositivo: "macbookImage", garantia: "Garantia Limitada")
    }
}
