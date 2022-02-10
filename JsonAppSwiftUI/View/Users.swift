//
//  Users.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 2/02/22.
//

import SwiftUI

struct Users: View {
    
    @StateObject var json = UserListViewModel()
    
    var body: some View {
        
        if json.dataModel.data.isEmpty {
            ProgressView()
        } else {
            List(json.dataModel.data, id: \.id){ item in
                
                NavigationLink(destination: Detail(id: item.id)){
                    HStack{
                        Image(systemName: "person.fill")
                            .data(url: URL(string: item.avatar)!)
                            .frame(width: 80, height: 80)
                            .clipped()
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text(item.first_name).font(.title)
                            Text(item.email).font(.subheadline)
                        }
                    }.navigationBarTitle("Json con Imagen")
                }
                
            }
        }
        
    }
}

extension Image{
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url){
            return Image(uiImage: UIImage(data: data)! )
                .resizable()
        }
        return self
            .resizable()
    }
}

struct Users_Previews: PreviewProvider {
    static var previews: some View {
        Users()
    }
}
