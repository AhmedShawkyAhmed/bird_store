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
            AsyncImage(url: URL(string: brandItem.image)) { image in
                
                image.resizable()
                    .scaledToFit()
                    .padding(5)
                    .frame(width: 40, height: 40, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(100)
                    .shadow(color: Color.shadowColor.opacity(0.3), radius: 5, x: 0, y: 4)
            } placeholder: {
                Image(brandItem.image)
                    .resizable()
                    .scaledToFit()
                    .padding(5)
                    .frame(width: 40, height: 40, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(100)
                    .shadow(color: Color.shadowColor.opacity(0.3), radius: 5, x: 0, y: 4)
            }
            
            Text(brandItem.name)
                .font(.system(size: 15))
                .foregroundColor(isSelected ? Color.white : Color.black)
//                .padding(.leading, 5)
        }
        .padding(.leading, 7)
        .frame(width: 130, height: 50, alignment: .leading)
        .background(isSelected ? Color.Primary : Color.white)
        .cornerRadius(100)
        .shadow(color: Color.shadowColor.opacity(0.3), radius: 5, x: 0, y: 4)
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    FilterWIdget(
        brandItem: BrandModel(id: 1, image: "", name: ""),
        isSelected: true,
        onTap: {}
    )
}
