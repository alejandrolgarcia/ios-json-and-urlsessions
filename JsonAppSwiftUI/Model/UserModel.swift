//
//  UserModel.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 28/01/22.
//

import Foundation

struct UserModel: Decodable {
    var id: Int
    var name: String
    var email: String
}
