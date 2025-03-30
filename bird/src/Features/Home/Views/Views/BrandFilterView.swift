//
//  FilterView.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import SwiftUI

struct BrandFilterView: View {
    @StateObject private var viewModel = HomeViewModel()
    @Binding var selectedBrand: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewModel.brands.indices, id: \.self) {
                    index in FilterWIdget(
                        brandItem: viewModel.brands[index],
                        isSelected: viewModel.brands[index].name == selectedBrand,
                        onTap: {
                            selectedBrand = viewModel.brands[index].name
                        }
                    )
                }
            }
            .padding(.bottom)
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    BrandFilterView(selectedBrand: .constant("All"))
}
