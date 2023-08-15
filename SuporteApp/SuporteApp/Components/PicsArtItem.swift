//
//  AssinaturaView.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct PicsArtItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Image("picsartImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                    Text("PicsArt")
                        .font(.title3)
                        .bold()
                    
                    HStack {
                        Text("Picsart Gold - Anual")
                            .font(.system(size: 15))
                        Spacer()
                        Button {
                            //
                        } label: {
                            Text("Ver planos >")
                                .font(.system(size: 15))
                        }

                    }
                }
                .padding(.horizontal)
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.5)

                VStack(alignment: .leading) {
                    Text("Sua assinatura expirou")
                        .foregroundColor(.red)
                        .bold()
                        .font(.system(size: 13))
                    Text("Sua assinatura do PicsArt expirou em 02/08.")
                        .font(.system(size: 13))

                    
                    Button {
                        //
                    } label: {
                        Text("Renovar: R$ 162,90/ano")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 330)
                            .background(Color.accentColor)
                            .cornerRadius(13)
                            .bold()
                        
                    }
                }
                .padding(.horizontal)
            }

        }
        .frame(width: .infinity, height: 250)
        .cornerRadius(15)
        .padding(.horizontal)

    }
}

struct PicsArtItem_Previews: PreviewProvider {
    static var previews: some View {
        PicsArtItem()
    }
}
