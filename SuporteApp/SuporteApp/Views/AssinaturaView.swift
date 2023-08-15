//
//  AssinaturaView.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct AssinaturaView: View {
    var body: some View {
        VStack {
            Spacer()
            PicsArtItem()
            Button {
                //
            } label: {
                Text("Sobre assinaturas e privacidade")
            }
            
            Spacer()
        }
        .background(Color(UIColor.quaternarySystemFill))

    }
}

struct AssinaturaView_Previews: PreviewProvider {
    static var previews: some View {
        AssinaturaView()
    }
}
