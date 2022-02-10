//
//  UserListViewModel.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 2/02/22.
//

import Foundation

class UserListViewModel: ObservableObject {
    
    @Published var dataModel = ListModel(data: [])
    
    init(){
        fetch()
    }
    
    func fetch(){
        
        guard let url = URL(string: "https://reqres.in/api/users?page=2") else { return }
        
        URLSession.shared.dataTask(with: url){data,_,_ in
    
            guard let data = data else { return }
            do{
                let json = try JSONDecoder().decode(ListModel.self, from: data)
                DispatchQueue.main.async {
                    self.dataModel = json
                }
            } catch let error as NSError{
                print("Error en la peticion http", error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}
