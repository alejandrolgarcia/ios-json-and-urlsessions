//
//  JsonAppSwiftUIApp.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 26/01/22.
//

import SwiftUI

@main
struct JsonAppSwiftUIApp: App {
    var body: some Scene {
        
        let login = PostViewModel()
        
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
