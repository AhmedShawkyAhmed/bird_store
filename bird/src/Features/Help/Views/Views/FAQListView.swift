//
//  FAQListView.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import SwiftUI

struct FAQListView: View {
    @StateObject private var viewModel = HelpViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                } else {
                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    ForEach(viewModel.faqs, id: \.id) {
                        faq in FAQWidget(faqItem: faq)
                    }
                }
            }
            .padding()
            .padding(.bottom, 60)
            .task {
                await viewModel.getFaqs()
            }
        }
    }
}

#Preview {
    FAQListView()
}
