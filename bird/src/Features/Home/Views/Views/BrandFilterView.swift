//
//  FilterView.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import SwiftUI

struct BrandFilterView: View {
    @Binding var selectedBrand: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(brandList) {
                    brand in FilterWIdget(
                        brandItem: brand,
                        isSelected: brand.text == selectedBrand,
                        onTap: {
                            selectedBrand = brand.text
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
