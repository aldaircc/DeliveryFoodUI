//
//  Onboarding.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 27/10/21.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack(alignment: .center) {
            ZStack(alignment: .center) {
                Image("Pattern")
                    .resizable()
                    .scaledToFit()
            }
            .ignoresSafeArea()
            
            ZStack(alignment: .center) {
                VStack {
                    Image("Logo")
                    Text("FoodNinja")
                        .font(.custom("Viga-Regular", size: 40))
                        .foregroundColor(.green)
                    Text("Deliever Favorite Food")
                        .font(.custom("Inter-Bold", size: 13))
                }
            }
            .padding([.vertical], -60)
            
            Spacer()
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
