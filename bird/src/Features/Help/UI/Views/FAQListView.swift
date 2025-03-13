//
//  FAQListView.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct FAQListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(faqItems) {
                    faq in FAQWidget(faqItem: faq)
                }
            }
            .padding()
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    FAQListView()
}
