//
//  Detail.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 3/02/22.
//

import SwiftUI

struct Detail: View {
    
    var id: Int
    @StateObject var user = DetailViewModel()
    
    var body: some View {
        VStack{
            
            if user.avatar.isEmpty {
                ProgressView()
            } else {
                Image(systemName: "person.fill")
                    .data(url: URL(string: user.avatar)!)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .clipShape(Circle())
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
            
        }.onAppear{
            user.fetch(id: id)
        }
    }
}
