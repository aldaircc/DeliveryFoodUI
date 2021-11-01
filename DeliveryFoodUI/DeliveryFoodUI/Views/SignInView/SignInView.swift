//
//  SignInView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 29/10/21.
//

import SwiftUI

struct SignInView: View {
    
    //MARK: - Properties
    @State private var userName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isHidden: Bool = true
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .center) {
                Image("Pattern")
                VStack {
                    Image("Logo")
                    VStack {
                        Text("FoodNinja")
                        Text("Deliever Favorite Food")
                    }
                }
            }
            
            VStack {
                TextField("Anamwp . . |", text: $userName)
                TextField("Email", text: $email)
                
                //                TextField("Password", text: $password)
                //                    .textFieldStyle(PasswordTextFieldStyle())
                //                    .padding()
                
                if self.isHidden {
                    SecureField("Password", text: $password)
                        .textFieldStyle(PasswordTextFieldStyle())
                        .padding()
                } else {
                    TextField("Password", text: $password)
                        .textFieldStyle(PasswordTextFieldStyle())
                        .padding()
                }
                
            }
            
            VStack {
                Button(action: {}, label: {
                    Text("Keep Me Signed in")
                })
                Button(action: {}, label: {
                    Text("Email Me About Special Pricing")
                })
            }
            
            
            Button(action: {
                self.isHidden.toggle()
                
            }, label: {
                Text("Create Account")
            })
            Button(action: {}, label: {
                Text("already have an account?")
            })
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}