//
//  NormalTextfieldStyle.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 4/11/21.
//

import Foundation
import SwiftUI

struct NormalTextfieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            configuration
                .padding(.horizontal, 20)
        }
        .frame(width: .infinity, height: 60, alignment: .center)
        .background(Color.white)
        .cornerRadius(15.0)
        .shadow(color: .white.opacity(0.7),
                radius: 22,
                x: 0.0,
                y: 50.0)
        
        /*
         background: #FFFFFF;
         box-shadow: 0px 0px 50px rgba(90, 108, 234, 0.07);
         border-radius: 22px;
         */
    }
}
