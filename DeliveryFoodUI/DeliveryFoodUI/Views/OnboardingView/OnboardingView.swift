//
//  Onboarding.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 27/10/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("first01Food")
            Text("Find your Comfort\n Fodd here")
                .font(.custom("BentonSans Bold", size: 22))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            Text("Here You Can fin a chef or dish for every\n taste and color. Enjoy!")
                .font(.custom("BentonSans Book", size: 12))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            
            Button("Next") {
                
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
            )
            
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
