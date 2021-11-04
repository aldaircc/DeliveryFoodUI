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
                VStack(spacing: 0) {
                    Image("Logo")
                    VStack(spacing: 0) {
                        Text("FoodNinja")
                            .font(.custom("viga", size: 40))
                            .foregroundColor(.green)
                        Text("Deliever Favorite Food")
                            .font(.custom("Inter-Medium", size: 13))
                    }
                    Text("Sign Up For Free")
                        .font(.custom("BentonSans Bold", size: 20))
                        .padding(.top, 30)
                }
            }
            
            VStack(spacing: 10) {
                TextField("Anamwp . . |", text: $userName)
                    .textFieldStyle(SigInTextFieldStyle(iconName: "ic_profile"))
                
                TextField("Email", text: $email)
                    .textFieldStyle(SigInTextFieldStyle(iconName: "ic_message"))
                
                if self.isHidden {
                    SecureField("Password", text: $password)
                        .textFieldStyle(PasswordTextFieldStyle( isHidden: self.isHidden, iconName: "ic_lock") { value in
                            self.isHidden = value
                        })
                } else {
                    TextField("Password", text: $password)
                        .textFieldStyle(PasswordTextFieldStyle(isHidden: self.isHidden, iconName: "ic_lock") { value in
                            self.isHidden = value
                        })
                }
                
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Button(action: {}, label: {
                        HStack {
                            Image("ic_check")
                                .offset(x: 18.0, y: 25.0)
                                .frame(width: 22, height: 22, alignment: .center)
                            Text("Keep Me Signed in")
                                .foregroundColor(.blackLabel)
                        }
                    })
                    Spacer()
                }
                
                HStack {
                    Button(action: {}, label: {
                        HStack {
                            Image("ic_check")
                                .offset(x: 18, y: 25)
                                .frame(width: 22, height: 22, alignment: .center)
                            Text("Email Me About Special Pricing")
                                .foregroundColor(.blackLabel)
                        }
                    })
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 12, leading: 25, bottom: 0, trailing: 0))
            
            VStack(spacing: 15) {
                Button(action: {
                    self.isHidden.toggle()
                    
                }, label: {
                    Text("Create Account")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                })
                .background(Color.green)
                .cornerRadius(15.0)
                
                Button(action: {}, label: {
                    Text("already have an account?")
                        .font(.custom("BentonSans Medium", size: 12))
                        .underline()
                        .foregroundColor(Color.green)
                })
            }
            .padding(.top, 15)
            
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
