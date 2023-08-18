//
//  ProdutosSheet.swift
//  SuporteApp
//
//  Created by Júlia Luz on 16/08/23.
//

import SwiftUI

struct ProdutosSheet: View {
    @Binding var showingSheet: Bool
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                    
                    
                }
            }
            
        }
        
    }
}

struct ProdutosSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProdutosSheet(showingSheet: Binding(get: {
                return true
            }, set: {_ in
                
            }))
        }    }
}
