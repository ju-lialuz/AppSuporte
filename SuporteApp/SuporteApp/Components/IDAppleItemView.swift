//
//  IDAppleItem.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 16/08/23.
//

import SwiftUI

struct IDAppleItemView: View {
    @State var id: IDAppleModel
    @Binding var selectedItem: IDAppleModel?
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(id.email)
                Text(id.desc)
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
            }
            Spacer()
            if id == selectedItem {
                Image(systemName: "checkmark")
                    .foregroundColor(.accentColor)
            }
        }
        .onTapGesture {
            self.selectedItem = self.id
        }
    }
}


