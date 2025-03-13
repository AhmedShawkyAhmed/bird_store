//
//  AdsView.swift
//  bird
//
//  Created by Ahmed Shawky on 03/03/2025.
//

import SwiftUI

struct AdsView: View {
    let ads: [AdModel]
    @State private var currentIndex = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(ads.indices, id: \.self) { index in
                ZStack(alignment: .bottomLeading) {
                    Image(ads[index].image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)

                    VStack(alignment: .leading) {
                        Text(ads[index].title)
                            .foregroundColor(.white)
                            .font(.caption)
                            .bold()

                        Text(ads[index].description)
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
                currentIndex = (currentIndex + 1) % ads.count
            }
        }
    }
}

#Preview {
    AdsView(ads: adItems)
}
