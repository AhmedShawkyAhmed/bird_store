//
//  FAQWidget.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct FAQWidget: View {
    var faqItem: FAQModel
    @State private var expandedIndex: Int? = nil
    
    var body: some View {
        DisclosureGroup(
                isExpanded: Binding(
                    get: { expandedIndex == faqItem.id },
                    set: { expandedIndex = $0 ? faqItem.id : nil }
                )
            ) {
                Text(faqItem.description)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 5)
            } label: {
                Text(faqItem.title)
                    .font(.system(size: 18))
                    .foregroundColor(.Primary)
                    .multilineTextAlignment(.leading)
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.shadowColor.opacity(0.3), radius: 5, x: 0, y: 2)
        }
    }

#Preview {
    FAQWidget(faqItem: FAQModel(id:1, title: "Do you offer discounts for students or businesses?", description: "Yes, we partner with financing companies to offer installment plans."))
}
