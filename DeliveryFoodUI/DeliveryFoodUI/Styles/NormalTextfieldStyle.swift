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
//                .padding(EdgeInsets(top: 24, leading: 20, bottom: 24, trailing: 20) )
        }
        .frame(width: .infinity, height: 60, alignment: .center)
        .background(Color.white)
        .cornerRadius(15.0)
    }
}
