//
//  ListModel.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 2/02/22.
//

import Foundation

struct ListModel: Decodable {
    var data: [UserList]
}

struct User: Decodable{
    var data: UserList
}

struct UserList: Decodable {
    var id: Int
    var first_name : String
    var email: String
    var avatar: String
}
