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
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        
        HStack {
            
            configuration
            
            Button(action: {
                configuration.labelsHidden()
//                print("\(configuration.labelsHidden())")
                self.isHidden.toggle()
            }, label: {
                Image("ic_show")
            })
        }
        .padding(.all, 5)
        .background(Color.gray)
        .cornerRadius(15.0)
        
    }
    
    //Opcion 2: Crear componente
    
}
