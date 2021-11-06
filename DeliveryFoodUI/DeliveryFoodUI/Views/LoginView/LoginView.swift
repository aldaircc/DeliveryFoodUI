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
                VStack {
                    Image("Logo")
                    Text("FoodNinja")
                        .font(.custom("Viga", size: 40))
                        .foregroundColor(Color.green)
                    Text("Deliever Favorite Food")
                        .font(.custom("Inter-SemiBold", size: 13))
                    
                    Text("Login To Your Account")
                        .font(.custom("BentonSans Bold", size: 20))
                        .offset(x: 0, y: 30)
                }
            }
            .background(Color.clear)
            
            VStack(spacing: 12) {
                TextField("Email", text: $email)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 1)
                            .foregroundColor(Color.gray)
                            .shadow(color: Color(.sRGB, red: 90, green: 108, blue: 234, opacity: 0.07), radius: 0, x: 0, y: 1)
                    )
                
                TextField("Password", text: $password)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 1)
                            .foregroundColor(Color.gray)
                            .shadow(color: Color(.sRGB, red: 90, green: 108, blue: 234, opacity: 0.07), radius: 0, x: 0, y: 20)
                    )
            }
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 20, trailing: 20))
            
            Text("Or Continue With")
                .font(.custom("BentonSans Bold", size: 12))
                .padding(.bottom, 20)
            
            HStack(spacing: 21) {
                Button(action: {}, label: {
                    HStack {
                        Image("ic_facebook")
                        Text("Facebook")
                            .font(.custom("BentonSans Medium", size: 14))
                            .foregroundColor(Color.black)
                    }
                })
                .frame(width: 152, height: 57)
                .background(Color.white)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 1.0)
                        .foregroundColor(Color.gray)
                )
                
                
                Button(action: {}, label: {
                    HStack {
                        Image("ic_google")
                        Text("Google")
                            .font(.custom("BentonSans Medium", size: 14))
                            .foregroundColor(Color.black)
                    }
                })
                .frame(width: 152, height: 57)
                .background(Color.white)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 1.0)
                        .foregroundColor(Color.gray)
                )
            }
            .padding(.bottom, 20)
            
            VStack(spacing: 36) {
                Button(action: {}, label: {
                    Text("Forgot Your Password?")
                        .font(.custom("BentonSans Medium", size: 12))
                        .underline()
                        .foregroundColor(Color.green)
                })
                Button(action: {}, label: {
                    Text("Login")
                        .font(.custom("BentonSans Bold", size: 16))
                        .foregroundColor(Color.white)
                })
                .frame(width: 141, height: 57, alignment: .center)
                .background(Color.green)
                .cornerRadius(15)
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
