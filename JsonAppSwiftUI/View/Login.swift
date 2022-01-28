//
//  Login.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 26/01/22.
//

import SwiftUI

struct Login: View {
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var login: PostViewModel
    
    var body: some View {
        VStack{
            WelcomeText()
            UserImage()
            TextField("Email", text: $email)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(8.0)
                .padding(.bottom, 20)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(8.0)
                .padding(.bottom, 20)
            
            Button(action: {
                login.login(email: email, password: password)
                print("Login")
            }) {
                Text("Guardar").foregroundColor(.white).bold()
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30)
            .background(.blue)
            .cornerRadius(8.0)
                    
        }.padding()
    }
}


struct WelcomeText: View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        return Image("user_image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
        
    }
}
