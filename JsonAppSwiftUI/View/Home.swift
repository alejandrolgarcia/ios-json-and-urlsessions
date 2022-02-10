//
//  Home.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 26/01/22.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login: PostViewModel
    @StateObject var jsonData = UserViewModel()
    
    var body: some View {
        NavigationView{
            if jsonData.dataModel.isEmpty {
                ProgressView()
            } else {
                List(jsonData.dataModel, id:\.id) { item in
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.address.geo.lat)
                    }
                }
                .navigationBarTitle("Json")
                .navigationBarItems(
                    leading: Button(action: {
                        UserDefaults.standard.removeObject(forKey: "session")
                        login.authenticated = 0
                    }){
                        Text("Salir")
                    },
                    trailing: NavigationLink(destination: Users()){
                        Text("Siguiente")
                    }
                )
            }
        }
    }
}
