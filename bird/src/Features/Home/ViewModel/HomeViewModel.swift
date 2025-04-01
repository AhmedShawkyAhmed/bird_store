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
    @Published var products: [ProductModel] = []
    @Published var errorMessage: String?
    @Published var isAdsLoading: Bool = false
    @Published var isBrandLoading: Bool = false
    @Published var isProductLoading: Bool = false
    
    init() {
        Task {
            await getAds()
            await getBrands()
            await getProducts()
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
    
    func getProducts() async {
        isProductLoading = true
        defer { isProductLoading = false }
        
        do {
            let response: APIResponse<[ProductModel]> = try await APIClient.shared.request(
                endpoint: EndPoints.product,
                method: .GET
            )
            products = response.data
        } catch {
            print(error)
            errorMessage = "Error fetching Products: \(error.localizedDescription)"
        }
    }
}
