//
//  PaymentMethodView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 5/11/21.
//

import SwiftUI

struct PaymentMethodView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Image("PatternBg2")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.25)
                Spacer()
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Button(action: {}, label: {
                        Image("ic_backbutton")
                            .padding(EdgeInsets(top: 14, leading: 17, bottom: 14, trailing: 17))
                    })
                    .frame(width: 45, height: 45, alignment: .center)
                    .background(Color.orangeBackButton)
                    .cornerRadius(15.0)
                }
                .padding(.horizontal, 25)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Payment Method")
                        .font(.custom("BentonSans Bold", size: 25))
                    Text("This data will be displayed in your account profile for security")
                        .font(.custom("BentonSans Book", size: 12))
                }
                .padding(.horizontal, 25)
                
                VStack(alignment: .leading, spacing: 17) {
                    Button(action: {}, label: {
                        Spacer()
                        Image("ic_visa")
                        Spacer()
                    })
                    .frame(width: .infinity, height: 73, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 0.1)
                            .foregroundColor(Color.gray.opacity(0.2))
                    )
                    .shadow(color: .black.opacity(0.1),
                            radius: 10,
                            x: 0.0, y: 0.0)
                    
                    Button(action: {}, label: {
                        Spacer()
                        Image("ic_paypal")
                        Spacer()
                    })
                    .frame(width: .infinity, height: 73, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 0.1)
                            .foregroundColor(Color.gray.opacity(0.2))
                    )
                    .shadow(color: .black.opacity(0.1),
                            radius: 10,
                            x: 0.0, y: 0.0)
                    
                    Button(action: {}, label: {
                        Spacer()
                        Image("ic_payoneer")
                        Spacer()
                    })
                    .frame(width: .infinity, height: 73, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(lineWidth: 0.1)
                            .foregroundColor(Color.gray.opacity(0.2))
                    )
                    .shadow(color: .black.opacity(0.1),
                            radius: 10,
                            x: 0.0, y: 0.0)
                    
                }
                .padding(.horizontal, 20)
                
                Spacer()
                HStack {
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
            Spacer()
        }
    }
}

struct PaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodView()
    }
}
