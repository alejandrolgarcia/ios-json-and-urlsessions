//
//  UserViewModel.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 28/01/22.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var dataModel : [UserModel] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        URLSession.shared.dataTask(with: url){data,_,_ in
    
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode([UserModel].self, from: data)
                DispatchQueue.main.async {
                    self.dataModel = json
                }
            } catch let error as NSError{
                print("Error en la peticion http", error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}
