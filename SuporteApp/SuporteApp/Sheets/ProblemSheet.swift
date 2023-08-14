//
//  ProblemSheet.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 14/08/23.
//

import SwiftUI

struct ProblemSheet: View {
    @State var text: String = ""
    @Binding var showingSheet: Bool
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Conte o que está acontecendo")
                    .padding(.leading)
                HStack(alignment: .top) {
                    TextField("Exemplo: senha esquecida", text: $text)
                    Button {
                        //fazer acao do microfone
                        text = ""
                    } label: {
                        Image(systemName: text == "" ? "mic.fill" : "x.circle.fill")
                            .foregroundColor(.gray)
                    }

                    
                    
                }
                .frame(width: .infinity, height: 50)
                //.border(.blue)
                .font(.system(size: 15))
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
                  
            
                Spacer()
            }
            .padding(.top, 20)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showingSheet = false
                    } label: {
                        Text("Cancelar")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //fechar sheet
                    } label: {
                        Text("Próximo")
                            .foregroundColor(text == "" ? .secondary : .accentColor)
                    }
                }
            }
            .background(Color(UIColor.quaternarySystemFill))
            
        }
    }
}

struct ProblemSheet_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSheet(showingSheet: Binding(get: {
            return true
        }, set: {_ in
            
        }))
    }
}
