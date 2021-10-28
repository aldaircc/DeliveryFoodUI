//
//  LoginView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 28/10/21.
//

import SwiftUI

struct LoginView: View {
    
    //MARK: - Properties
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("Pattern")
                    .resizable()
                    .scaledToFit()
                VStack {
                    Image("Logo")
                    Text("FoodNinja")
                    Text("Deliever Favorite Food")
                }
            }
            .background(Color.clear)
            
            Text("Login To Your Account")
            
            TextField("Email", text: $email)
            TextField("Password", text: $password)
            
            Text("Or Continue With")
            
            HStack {
                Button(action: {}, label: {
                    HStack {
                        Image("ic_facebook")
                        Text("Facebook")
                        
                    }
                })
                Button(action: {}, label: {
                    HStack {
                        Image("ic_google")
                        Text("Google")
                    }
                })
            }
            
            VStack {
                Button(action: {}, label: {
                    Text("Forgot Your Password?")
                })
                Button(action: {}, label: {
                    Text("Login")
                })
            }
            
            Spacer()
        }
        .ignoresSafeArea()
//        .background(Color.green)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
