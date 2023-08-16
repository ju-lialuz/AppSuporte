//
//  ProdutoCard.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 16/08/23.
//

import SwiftUI

struct ProdutoCard: View {
    @State var imagem: String
    @State var title: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50)
                    //.border(.red)
                Text(title)
                    .bold()
                    .font(.system(size: 15))
            }
            .padding()
            .frame(width: 100, height: 85)
            .background(Color(UIColor.quaternarySystemFill))
            .cornerRadius(10)
            //.border(.red)
        }
    }
}

struct ProdutoCard_Previews: PreviewProvider {
    static var previews: some View {
        ProdutoCard(imagem: "airtagImage", title: "AirTag")
    }
}
