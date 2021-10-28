//
//  Onboarding.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 27/10/21.
//

import SwiftUI

//MARK: - Identifier
struct Item: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let imageName: String
}

struct OnboardingView: View {
    
    //MARK: - Properties
    @State private var selectedTab = 0
    var items: [Item] = [Item(title: "Find your Comfort\n Fodd here",
                              description: "Here You Can fin a chef or dish for every\n taste and color. Enjoy!",
                              imageName: "first01Food"),
                         Item(title: "Food Ninja is Where Your\n Comfort Food Lives",
                              description: "Enjoy a fast and smooth food delivery at\n your doorstep",
                              imageName: "second02Food"),
                         
                         Item(title: "Peruvian Food Ninja is Where Your\n Comfort Food Lives",
                              description: "Enjoy a fast and smooth food delivery at\n your doorstep",
                              imageName: "Logo")]
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TabView(selection: $selectedTab) {
                    
                    ForEach( Array(items.enumerated()) , id: \.offset) { item in
                        VStack(spacing: 20) {
                            Image(item.element.imageName )
                            Text(item.element.title)
                                .font(.custom("BentonSans Bold", size: 22))
                                .lineSpacing(10.0)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                            Text(item.element.description)
                                .font(.custom("BentonSans Book", size: 12))
                                .lineSpacing(4)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                        }
                        .tag(item.offset)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                
                Button(action: {
                    print("Tab: \(selectedTab)")
                    withAnimation {
                        self.selectedTab = (selectedTab == items.count - 1) ? 0 : selectedTab + 1
                    }
                }, label: {
                    HStack(alignment: .center) {
                        Text("Next")
                            .font(.custom("BentonSans Bold", size: 16))
                            .foregroundColor(Color.white)
                    }
                })
                .frame(width: 157, height: 57, alignment: .center)
                .background(Color.green)
                .cornerRadius(15)
                .padding(5)
                
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
