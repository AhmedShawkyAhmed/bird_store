//
//  FAQModel.swift
//  bird
//
//  Created by Ahmed Shawky on 02/03/2025.
//

import Foundation

struct FAQModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

let faqItems: [FAQModel] = [
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    FAQModel(title: "Data", description: "We collect data to improve your experience."),
    FAQModel(title: "Fees", description: "There may be fees depending on your usage."),
    FAQModel(title: "Content", description: "Our platform provides diverse content."),
    FAQModel(title: "Service", description: "We offer various services to enhance your experience.")
    ]
