//
//  HomeViewModel.swift
//  bird
//
//  Created by Ahmed Shawky on 31/03/2025.
//

import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    @Published var ads: [AdModel] = []
    @Published var brands: [BrandModel] = []
    @Published var errorMessage: String?
    @Published var isAdsLoading: Bool = false
    @Published var isBrandLoading: Bool = false
    
    init() {
        Task {
            await getAds()
            await getBrands()
        }
    }
    
    func getAds() async {
        isAdsLoading = true
        defer { isAdsLoading = false }
        
        do {
            let response: APIResponse<[AdModel]> = try await APIClient.shared.request(
                endpoint: EndPoints.ad,
                method: .GET
            )
            ads = response.data
        } catch {
            print(error)
            errorMessage = "Error fetching Ads: \(error.localizedDescription)"
        }
    }
    
    func getBrands() async {
        isBrandLoading = true
        defer { isBrandLoading = false }
        
        do {
            let response: APIResponse<[BrandModel]> = try await APIClient.shared.request(
                endpoint: EndPoints.brand,
                method: .GET
            )
            brands = response.data
        } catch {
            print(error)
            errorMessage = "Error fetching Brands: \(error.localizedDescription)"
        }
    }
}
