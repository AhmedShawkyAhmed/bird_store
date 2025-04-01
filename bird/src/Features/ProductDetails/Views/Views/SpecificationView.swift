//
//  SpecificationView.swift
//  bird
//
//  Created by Ahmed Shawky on 14/03/2025.
//

import SwiftUI

struct SpecificationView: View {
    var spesification: SpesificationModel
    var body: some View {
        VStack(spacing: 8) {
            ForEach(spesification.items, id: \.title)
            { title, content in
                SpecificationWidget(title: title, content: content)
            }
        }
    }
}

#Preview {
    SpecificationView(
        spesification:
            SpesificationModel(
                id: 1,
                processor: "",
                graphics: "",
                display: "",
                memory: "",
                storage: "",
                operatingSystem: "",
                ports: "",
                camera: "",
                audio: "",
                battery: ""
            )
    )
}
