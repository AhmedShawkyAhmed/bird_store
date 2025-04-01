//
//  SpesificationModel.swift
//  bird
//
//  Created by Ahmed Shawky on 10/03/2025.
//

import Foundation

struct SpesificationModel: Codable {
    let id: Int
    let processor: String
    let graphics: String
    let display: String
    let memory: String
    let storage: String
    let operatingSystem: String
    let ports: String
    let camera: String
    let audio: String
    let battery: String
    
    var items: [(title: String, content: String)] {
            [
                ("Processor", processor),
                ("Graphics", graphics),
                ("Display", display),
                ("Memory", memory),
                ("Storage", storage),
                ("Operating System", operatingSystem),
                ("Ports", ports),
                ("Camera", camera),
                ("Audio", audio),
                ("Battery", battery)
            ]
        }
    
    enum CodingKeys: String, CodingKey {
        case id
        case processor
        case graphics
        case display
        case memory
        case storage
        case operatingSystem = "operating_system"
        case ports
        case camera
        case audio
        case battery
    }
}

//let specificationsList: [SpesificationModel] = [
//    SpesificationModel(
//        processor: "Intel Core i9-13900H",
//        graphics: "NVIDIA GeForce RTX 4070 8GB",
//        display: "16-inch 2560x1600 IPS, 165Hz",
//        memory: "32GB DDR5 RAM",
//        storage: "1TB NVMe SSD",
//        operatingSystem: "Windows 11 Pro",
//        ports: "2x USB-C, 2x USB-A, HDMI, 3.5mm Jack, SD Card Reader",
//        camera: "1080p Full HD Webcam",
//        audio: "Dolby Atmos Speakers",
//        battery: "99Wh, Up to 12 hours"
//    ),
//    SpesificationModel(
//        processor: "Apple M2 Pro 10-Core",
//        graphics: "Apple 16-Core GPU",
//        display: "14.2-inch Liquid Retina XDR, 3024x1964",
//        memory: "16GB Unified Memory",
//        storage: "512GB SSD",
//        operatingSystem: "macOS Ventura",
//        ports: "3x Thunderbolt 4, HDMI, MagSafe, SD Card Slot",
//        camera: "1080p FaceTime HD Camera",
//        audio: "6-Speaker System with Spatial Audio",
//        battery: "Up to 17 hours"
//    ),
//    SpesificationModel(
//        processor: "AMD Ryzen 9 7945HX",
//        graphics: "NVIDIA GeForce RTX 4080 12GB",
//        display: "17.3-inch QHD 240Hz, 2560x1440",
//        memory: "32GB DDR5 RAM",
//        storage: "2TB NVMe SSD",
//        operatingSystem: "Windows 11 Home",
//        ports: "2x USB-C, 3x USB-A, HDMI, 3.5mm Jack, Ethernet",
//        camera: "1080p Full HD with IR for Windows Hello",
//        audio: "Dual Dolby Atmos Speakers",
//        battery: "90Wh, Up to 8 hours"
//    ),
//    SpesificationModel(
//        processor: "Intel Core i7-1360P",
//        graphics: "Intel Iris Xe Graphics",
//        display: "13.3-inch OLED 2880x1800, 90Hz",
//        memory: "16GB LPDDR5 RAM",
//        storage: "1TB SSD",
//        operatingSystem: "Windows 11 Home",
//        ports: "2x Thunderbolt 4, 1x USB-A, HDMI, 3.5mm Jack",
//        camera: "720p HD Webcam",
//        audio: "Harman Kardon Speakers",
//        battery: "75Wh, Up to 14 hours"
//    )
//]
