//
//  NotificationModel.swift
//  bird
//
//  Created by Ahmed Shawky on 09/03/2025.
//

import Foundation

struct NotificationModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

let notificationsList: [NotificationModel] = [
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Data", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Help", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Login", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Register", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Data", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Help", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Favorite", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Account", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Login", description: "You need to create an account to use the application but you can delete your account any time you want."),
    NotificationModel(title: "Register", description: "You need to create an account to use the application but you can delete your account any time you want."),
    ]
