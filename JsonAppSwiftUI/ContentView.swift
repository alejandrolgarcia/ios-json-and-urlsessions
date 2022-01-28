//
//  ContentView.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login: PostViewModel
    
    var body: some View {
        Group{
            if login.authenticated == 0 {
                Login()
            } else if login.authenticated == 1 {
                Home()
            } else if login.authenticated == 2 {
                VStack{
                    Text("Usuario o contraseña incorrecto")
                    Button(action: {
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
