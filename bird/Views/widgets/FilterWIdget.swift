//
//  FilterWIdget.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import SwiftUI

struct FilterWIdget: View {
    var brandItem: BrandModel
    var isSelected: Bool
    var onTap: () -> Void 
    
    var body: some View {
        HStack() {
            Image(brandItem.image)
                .resizable()
                .scaledToFit()
                .padding(5)
                .frame(width: 40, height: 40, alignment: .center)
                .background(Color.white)
                .cornerRadius(100)
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 4)
            
            Text(brandItem.text)
                .font(.system(size: 15))
                .foregroundColor(isSelected ? Color.white : Color.black)
//                .padding(.leading, 5)
        }
        .padding(.leading, 7)
        .frame(width: 130, height: 50, alignment: .leading)
        .background(isSelected ? Color.Primary : Color.white)
        .cornerRadius(100)
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 4)
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    FilterWIdget(
        brandItem: brandList[0],
        isSelected: true,
        onTap: {}
    )
}
