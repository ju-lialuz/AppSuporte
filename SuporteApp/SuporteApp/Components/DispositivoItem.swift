//
//  DispositivoItem.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 14/08/23.
//

import SwiftUI

struct DispositivoItem: View {
    @State var nomeDispositivo: String
    @State var modeloDispositivo: String
    @State var imagemDispositivo: String
    
    
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
            }
        }
        //.border(.red)
    }
}

struct DispositivoItem_Previews: PreviewProvider {
    static var previews: some View {
        DispositivoItem(nomeDispositivo: "Gigi Micher", modeloDispositivo: "Este iPhone 13", imagemDispositivo: "iphoneImage")
        DispositivoItem(nomeDispositivo: "MacBook Pro de Giovanna Micher", modeloDispositivo: "MacBook Pro 14''", imagemDispositivo: "macbookImage")
    }
}
