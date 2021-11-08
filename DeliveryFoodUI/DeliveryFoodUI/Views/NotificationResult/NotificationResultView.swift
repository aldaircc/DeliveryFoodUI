//
//  NotificationResultView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 8/11/21.
//

import SwiftUI

struct NotificationResultView: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .leading) {
                Image("Pattern")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.56)
                Spacer()
            }
            .ignoresSafeArea()
            
            VStack {
                Image("notificationSuccess")
                    .resizable()
                    .frame(width: 172, height: 162)
                    .padding(.bottom, 33)
                VStack(spacing: 12) {
                    Text("Congrats!")
                        .font(.custom("BentonSans Bold", size: 30))
                        .foregroundColor(.green)
                    Text("Your Profile Is Ready To Use")
                        .font(.custom("BentonSans Bold", size: 23))
                    
                }
            }
            
            VStack {
                Spacer()
                Button(action: { }) {
                    Text("Try Order")
                        .font(.custom("BentonSans Bold", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: 157, height: 57)
                .background(Color.greenButton)
                .cornerRadius(15.0)
            }
            .padding(.bottom, 60)
            
        }
        
    }
}

struct NotificationResultView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationResultView()
    }
}
