//
//  AssinaturaItem.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct AssinaturaItem: View {
    
    var body: some View {
        HStack {
            Image("picsartImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 45, height: 45)
                //.border(.red)
            
            VStack(alignment: .leading) {
                Text("PicArt")
                
                VStack(alignment: .leading) {
                    Text("Picsart Gold - Atual")
                    Text("Expirou em 02/08")
                }
                .foregroundColor(.gray)
                .font(.system(size: 15))
                //.border(.red)
            }
            Spacer()
            
        }
    }
}

struct AssinaturaItem_Previews: PreviewProvider {
    static var previews: some View {
        AssinaturaItem()
    }
}
