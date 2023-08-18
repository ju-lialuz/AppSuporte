//
//  SenhaSheet.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 15/08/23.
//

import SwiftUI

struct SenhaSheet: View {
    @Binding var showingSheet: Bool
    @StateObject var items = IDAppleViewModel()

    @State var selectedID: IDAppleModel? = nil
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer()
                Text("Confirmar ID Apple")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text("Selecione o ID Apple cuja senha você deseja redefinir.")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                Spacer()
                
                Divider()
                
                List {
                    ForEach(items.items, id: \.self) { item in
                        IDAppleItemView(id: item, selectedItem: $selectedID)
                        
                    }
                }
                .listStyle(.plain)
                    
                Button {
                    //
                } label: {
                    Text("Continuar")
                }
                .frame(width: 345)
                .padding(9)
                .background(Color.accentColor)
                .cornerRadius(10)
                .foregroundColor(.white)

                    Spacer()
                    
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            showingSheet = false
                        } label: {
                            Text("Cancelar")
                                .foregroundColor(.accentColor)
                        }
                    }
                }
            }
        }
    }

struct SenhaSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SenhaSheet(showingSheet: Binding(get: {
                return true
            }, set: {_ in
                
            }))
        }
    }
}
