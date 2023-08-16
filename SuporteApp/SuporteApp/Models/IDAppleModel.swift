//
//  IDAppleModel.swift
//  SuporteApp
//
//  Created by Giovanna Micher on 16/08/23.
//

import Foundation

struct IDAppleModel: Identifiable, Equatable, Hashable {
    let id: String
    let email: String
    let desc: String
    
    init(id: String = UUID().uuidString, email: String, desc: String) {
        self.id = id
        self.email = email
        self.desc = desc
    }
}
