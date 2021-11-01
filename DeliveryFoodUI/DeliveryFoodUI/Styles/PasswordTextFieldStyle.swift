//
//  PasswordTextFieldStyle.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 29/10/21.
//

import SwiftUI

struct PasswordTextFieldStyle: TextFieldStyle {
    
    //MARK: - Properties
    @State var isHidden: Bool = true
    var iconName: String
    var executeAction: (Bool) -> Void = { _ in }
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        
        HStack(spacing: 16) {
            Image(iconName)
                .padding(EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 0))
                
            configuration
            
            Button(action: {
                self.isHidden.toggle()
                self.executeAction(self.isHidden)
            }, label: {
                Image("ic_show")
            })
            .padding(.init(top: 16, leading: 0, bottom: 16, trailing: 20))
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15.0)
                .stroke(lineWidth: 1.0)
                .foregroundColor(Color.green)
        )
        .background(Color.white)
        .cornerRadius(15.0)
        
    }
    
    //Opcion 2: Crear componente
    
}
