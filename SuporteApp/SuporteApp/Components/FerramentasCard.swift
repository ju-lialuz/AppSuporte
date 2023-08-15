//
//  FerramentasCard.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct FerramentasCard: View {
    @State var title: String
    @State var symbol: String
    @State var color: UIColor
    
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: symbol)
                    .frame(width: 30, height: 30)
                    .font(.system(size: 25))
                    .symbolRenderingMode(.multicolor)
                    //.border(.red)
                Text(title)
                    .bold()
                
                Spacer()
            }
        }
        .frame(width: 320)
        .padding()
        .background(Color(UIColor.quaternarySystemFill))
        .cornerRadius(15)
        

    }
}

struct FerramentasCard_Previews: PreviewProvider {
    static var previews: some View {
        FerramentasCard(title: "Gerenciar assinatura", symbol: "calendar.badge.plus", color: .red)
        FerramentasCard(title: "Redefinir a senha", symbol: "rectangle.and.pencil.and.ellipsis", color: .gray)
        FerramentasCard(title: "Verificar a cobertura", symbol: "apple.logo", color: .red)

    }
}
