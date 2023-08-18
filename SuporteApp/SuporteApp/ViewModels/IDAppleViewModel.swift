//
//  IDAppleViewModel.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 16/08/23.
//

import Foundation

class IDAppleViewModel: ObservableObject {
    @Published var items: [IDAppleModel] = [
        IDAppleModel(email: "itsgiomilker@gmail.com", desc: "Sessão iniciada"),
        IDAppleModel(email: "juliasmartinsluz@gmail.com", desc: "Sessão não iniciada"),
        IDAppleModel(email: "Outro ID Apple", desc: "")
    ]
}
