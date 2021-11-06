//
//  SignUpView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 4/11/21.
//

import SwiftUI

struct SignUpView: View {
    //MARK: - Properties
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var mobileNumber: String = ""
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("Pattern")
                .resizable()
                .rotation3DEffect(
                    .init(degrees: 100),
                    axis: (x: 0.0, y: 10.0, z: 0.0)
                )
                .aspectRatio(contentMode: .fit)
                
            
            VStack(alignment: .leading, spacing: 20) {
                
                Button(action: {}, label: {
                    Image("ic_backbutton")
                        .resizable()
                        .frame(width: 10, height: 16, alignment: .center)
                        .padding(EdgeInsets(top: 17, leading: 14, bottom: 17, trailing: 14))
                })
                .frame(width: 45, height: 45, alignment: .center)
                .background(Color.orangeBackButton)
                .cornerRadius(15.0)
                .padding(.horizontal, 25)
                
                
                VStack(alignment: .leading, spacing: 19) {
                    Text("Fill in your bio to get started")
                        .font(.custom("BentonSans Bold", size: 25))
                    Text("This data will be displayed in your account profile for security")
                        .font(.custom("BentonSans Book", size: 12))
                    
                }
                .padding(.horizontal, 25)
                
                
                VStack(alignment: .leading, spacing: 20) {
                    TextField("First Name", text: $firstName)
                        .textFieldStyle(NormalTextfieldStyle())
                    TextField("Last Name", text: $lastName)
                        .textFieldStyle(NormalTextfieldStyle())
                    TextField("Mobile Number", text: $mobileNumber)
                        .textFieldStyle(NormalTextfieldStyle())
                }
                .padding(.horizontal, 14)
                Spacer()
                HStack(alignment: .center) {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Next")
                            .font(.custom("BentonSans Bold", size: 16))
                            .foregroundColor(.white)
                    })
                    .frame(width: 157, height: 57, alignment: .center)
                    .background(Color.green)
                    .cornerRadius(15.0)
                    Spacer()
                }
                .padding(.bottom, 60)
            }
//            .background(Color.appWhiteBg001)
        }
        .ignoresSafeArea()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
