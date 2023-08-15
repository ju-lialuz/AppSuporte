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
    @State var color1: Color
    @State var color2: Color

    var body: some View {
        VStack{
            HStack {
                Image(systemName: symbol)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    //.border(.red)
                    .foregroundStyle(color1, color2)
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
        FerramentasCard(title: "Gerenciar assinatura", symbol: "calendar.badge.plus", color1: Color.red, color2: Color.green)
        FerramentasCard(title: "Redefinir a senha", symbol: "rectangle.and.pencil.and.ellipsis", color1: Color.gray, color2: Color.blue)
        FerramentasCard(title: "Verificar a cobertura", symbol: "apple.logo", color1: Color.red, color2: Color.red)

    }
}
