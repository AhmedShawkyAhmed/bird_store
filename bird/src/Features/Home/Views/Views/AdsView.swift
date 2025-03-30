//
//  AdsView.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import SwiftUI

struct AdsView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(viewModel.ads.indices, id: \.self) { index in
                ZStack(alignment: .bottomLeading) {
                    AsyncImage(url: URL(string: viewModel.ads[index].image)) { image in
                        image.resizable()
                             .scaledToFit()
                             .cornerRadius(10)
                    } placeholder: {
                        Image(Images.ad)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                    }

                    VStack(alignment: .leading) {
                        Text(viewModel.ads[index].title)
                            .foregroundColor(.white)
                            .font(.caption)
                            .bold()

                        Text(viewModel.ads[index].description)
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                    .padding(10)
                }
                .frame(maxWidth: .infinity)
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 200)
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % viewModel.ads.count
            }
        }
    }
}

#Preview {
    AdsView()
}
