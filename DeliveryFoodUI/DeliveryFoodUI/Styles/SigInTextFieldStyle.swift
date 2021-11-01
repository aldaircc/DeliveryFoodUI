//
//  SigInTextFieldStyle.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 31/10/21.
//

import SwiftUI

struct SigInTextFieldStyle: TextFieldStyle {
    
    //MARK: - Properties
    var iconName: String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack(spacing: 16) {
            Image(iconName)
                .padding(.init(top: 16, leading: 20, bottom: 16, trailing: 0))
            configuration
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15.0)
                .stroke(lineWidth: 1.0)
                .foregroundColor(Color.green)
        )
        .background(Color.white)
        .cornerRadius(15.0)
        .padding()
    }
}
