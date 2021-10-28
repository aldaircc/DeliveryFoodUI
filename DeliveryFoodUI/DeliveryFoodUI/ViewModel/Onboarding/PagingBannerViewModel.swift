//
//  PagingBannerViewModel.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 28/10/21.
//

import Foundation
import Combine

class PagingBannerViewModel: ObservableObject {
    
    @Published var bannerType: BannerContentType = .first
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        Timer.publish(every: 2, on: .main, in: .default)
            .autoconnect()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                guard let self = self else { return }
                self.bannerType = self.bannerType.next()
            }
            .store(in: &cancellables)
    }
    
    func onChangeBanner(to type: BannerContentType) {
        let all = BannerContentType.allCases
        guard let index = all.firstIndex(of: type),
              let currentIndex = all.firstIndex(of: bannerType) else {
            return
        }
        
        if currentIndex != index {
            bannerType = type
        }
    }
}
