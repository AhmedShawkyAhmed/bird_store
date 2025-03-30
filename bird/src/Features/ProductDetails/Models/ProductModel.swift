//
//  ProductModel.swift
//  bird
//
//  Created by Ahmed Shawky on 08/03/2025.
//

import Foundation

struct ProductModel: Identifiable {
    let id = UUID()
    let brand: BrandModel
    let name: String
    let price: String
    let image: String
    let type: String
    let storeURL: String
    let overview: String
    let spesification: SpesificationModel
    let reviews: [ReviewModel]
    var isFavorite: Bool
}

let galleryImages: [String] = [
    Images.acerLaptop,
    Images.appleLaptop,
    Images.acerLaptop,
    Images.appleLaptop,
    Images.acerLaptop,
    Images.appleLaptop,
]

var brand: BrandModel = BrandModel(id: 1, image: "ff", name: "ddd")

let productList: [ProductModel] = [
    ProductModel(
        brand: brand,
        name: "Acer Predator Helios 300",
        price: "45,000 EGP",
        image: Images.acerLaptop,
        type: "Gaming Laptop",
        storeURL: "https://www.acer.com",
        overview: "Acer Predator Helios 300 is a high-performance gaming laptop featuring powerful internals, smooth high refresh-rate display, and advanced cooling technology.",
        spesification: SpesificationModel(
            processor: "Intel Core i7-13700H",
            graphics: "NVIDIA GeForce RTX 4060 8GB",
            display: "15.6-inch FHD 165Hz",
            memory: "16GB DDR5",
            storage: "1TB SSD",
            operatingSystem: "Windows 11",
            ports: "USB-C, USB-A, HDMI, Ethernet, 3.5mm Jack",
            camera: "1080p Webcam",
            audio: "DTS:X Ultra Speakers",
            battery: "Up to 6 hours"
        ),
        reviews: reviewList,
        isFavorite: true
    ),
    ProductModel(
        brand: brand,
        name: "Razer Blade 16",
        price: "75,000 EGP",
        image: Images.razerLaptop,
        type: "Gaming Laptop",
        storeURL: "https://www.razer.com",
        overview: "Razer Blade 16 is a premium gaming laptop with ultra-thin design, top-tier performance, and a stunning high refresh-rate display.",
        spesification: SpesificationModel(
            processor: "Intel Core i9-13950HX",
            graphics: "NVIDIA GeForce RTX 4090 16GB",
            display: "16-inch Mini LED 240Hz",
            memory: "32GB DDR5",
            storage: "2TB SSD",
            operatingSystem: "Windows 11",
            ports: "USB-C, USB-A, HDMI, Thunderbolt 4",
            camera: "1080p IR Camera",
            audio: "THX Spatial Audio",
            battery: "Up to 7 hours"
        ),
        reviews: reviewList,
        isFavorite: false
    ),
    ProductModel(
        brand: brand,
        name: "MacBook Pro M3 Max",
        price: "170,000 EGP",
        image: Images.appleLaptop,
        type: "Professional Laptop",
        storeURL: "https://www.apple.com",
        overview: "MacBook Pro M3 Max delivers incredible power, advanced AI processing, and industry-leading battery life in a sleek, portable design.",
        spesification: SpesificationModel(
            processor: "Apple M3 Max 16-Core",
            graphics: "Apple 40-Core GPU",
            display: "16.2-inch Liquid Retina XDR",
            memory: "64GB Unified Memory",
            storage: "2TB SSD",
            operatingSystem: "macOS Sonoma",
            ports: "4x Thunderbolt 4, HDMI, MagSafe 3, SD Card Slot",
            camera: "1080p FaceTime HD Camera",
            audio: "6-Speaker System with Spatial Audio",
            battery: "Up to 22 hours"
        ),
        reviews: reviewList,
        isFavorite: true
    ),
    ProductModel(
        brand:brand,
        name: "Acer Swift X",
        price: "35,000 EGP",
        image: Images.acerLaptop,
        type: "Ultrabook",
        storeURL: "https://www.acer.com",
        overview: "Acer Swift X is a lightweight yet powerful ultrabook designed for creators and professionals on the go.",
        spesification: SpesificationModel(
            processor: "AMD Ryzen 7 5800U",
            graphics: "NVIDIA GeForce RTX 3050 4GB",
            display: "14-inch FHD IPS",
            memory: "16GB LPDDR4X",
            storage: "512GB SSD",
            operatingSystem: "Windows 11",
            ports: "USB-C, USB-A, HDMI, 3.5mm Jack",
            camera: "720p HD Webcam",
            audio: "Stereo Speakers",
            battery: "Up to 14 hours"
        ),
        reviews: reviewList,
        isFavorite: false
    ),
    ProductModel(
        brand: brand,
        name: "Razer Blade Stealth 13",
        price: "42,000 EGP",
        image: Images.razerLaptop,
        type: "Gaming Ultrabook",
        storeURL: "https://www.razer.com",
        overview: "Razer Blade Stealth 13 combines a slim and portable form factor with gaming-grade performance.",
        spesification: SpesificationModel(
            processor: "Intel Core i7-1165G7",
            graphics: "NVIDIA GeForce GTX 1650 Ti 4GB",
            display: "13.3-inch OLED 60Hz",
            memory: "16GB LPDDR4X",
            storage: "512GB SSD",
            operatingSystem: "Windows 11",
            ports: "USB-C, USB-A, HDMI",
            camera: "720p HD Webcam",
            audio: "THX Spatial Audio",
            battery: "Up to 10 hours"
        ),
        reviews: reviewList,
        isFavorite: true
    ),
    ProductModel(
        brand: brand,
        name: "MacBook Air M2",
        price: "50,000 EGP",
        image: Images.appleLaptop,
        type: "Ultrabook",
        storeURL: "https://www.apple.com",
        overview: "MacBook Air M2 is an ultra-thin and lightweight laptop with impressive battery life and Apple's powerful M2 chip.",
        spesification: SpesificationModel(
            processor: "Apple M2 8-Core",
            graphics: "Apple 10-Core GPU",
            display: "13.6-inch Liquid Retina",
            memory: "16GB Unified Memory",
            storage: "512GB SSD",
            operatingSystem: "macOS Ventura",
            ports: "2x Thunderbolt 4, MagSafe 3, 3.5mm Jack",
            camera: "1080p FaceTime HD Camera",
            audio: "Four-Speaker System with Spatial Audio",
            battery: "Up to 18 hours"
        ),
        reviews: reviewList,
        isFavorite: false
    ),
    ProductModel(
       brand: brand,
       name: "Acer Nitro 5",
       price: "38,000 EGP",
       image: Images.acerLaptop,
       type: "Gaming Laptop",
       storeURL: "https://www.acer.com",
       overview: "Acer Nitro 5 offers solid gaming performance with great cooling and value for budget-conscious gamers.",
       spesification: SpesificationModel(
           processor: "Intel Core i5-12500H",
           graphics: "NVIDIA GeForce RTX 3050 6GB",
           display: "15.6-inch FHD 144Hz",
           memory: "16GB DDR4",
           storage: "512GB SSD",
           operatingSystem: "Windows 11",
           ports: "USB-C, USB-A, HDMI, Ethernet",
           camera: "720p HD Webcam",
           audio: "Dual Speakers with DTS:X",
           battery: "Up to 6 hours"
       ),
       reviews: reviewList,
       isFavorite: false
   ),
   ProductModel(
       brand: brand,
       name: "Razer Blade 14",
       price: "65,000 EGP",
       image: Images.razerLaptop,
       type: "Gaming Laptop",
       storeURL: "https://www.razer.com",
       overview: "Razer Blade 14 is a compact gaming beast with a sleek design and top-tier performance.",
       spesification: SpesificationModel(
           processor: "AMD Ryzen 9 6900HX",
           graphics: "NVIDIA GeForce RTX 3080 Ti 16GB",
           display: "14-inch QHD 165Hz",
           memory: "32GB DDR5",
           storage: "1TB SSD",
           operatingSystem: "Windows 11",
           ports: "USB-C, USB-A, HDMI, Thunderbolt 4",
           camera: "1080p IR Camera",
           audio: "THX Spatial Audio",
           battery: "Up to 8 hours"
       ),
       reviews: reviewList,
       isFavorite: true
   ),
   ProductModel(
       brand: brand,
       name: "MacBook Pro 14 M3",
       price: "130,000 EGP",
       image: Images.appleLaptop,
       type: "Professional Laptop",
       storeURL: "https://www.apple.com",
       overview: "MacBook Pro 14 M3 offers unparalleled performance with a stunning mini-LED display and long battery life.",
       spesification: SpesificationModel(
           processor: "Apple M3 Pro 12-Core",
           graphics: "Apple 18-Core GPU",
           display: "14.2-inch Liquid Retina XDR",
           memory: "32GB Unified Memory",
           storage: "1TB SSD",
           operatingSystem: "macOS Sonoma",
           ports: "Thunderbolt 4, HDMI, SD Card Slot, MagSafe 3",
           camera: "1080p FaceTime HD Camera",
           audio: "6-Speaker System with Spatial Audio",
           battery: "Up to 20 hours"
       ),
       reviews: reviewList,
       isFavorite: true
   ),
   ProductModel(
       brand: brand,
       name: "Acer Aspire 7",
       price: "28,500 EGP",
       image: Images.acerLaptop,
       type: "Budget Gaming Laptop",
       storeURL: "https://www.acer.com",
       overview: "Acer Aspire 7 is a budget-friendly gaming laptop with decent performance for casual gamers and students.",
       spesification: SpesificationModel(
           processor: "Intel Core i5-1135G7",
           graphics: "NVIDIA GTX 1650 4GB",
           display: "15.6-inch FHD 60Hz",
           memory: "8GB DDR4",
           storage: "512GB SSD",
           operatingSystem: "Windows 11",
           ports: "USB-C, USB-A, HDMI, Ethernet",
           camera: "720p Webcam",
           audio: "Stereo Speakers",
           battery: "Up to 7 hours"
       ),
       reviews: reviewList,
       isFavorite: false
   ),
   ProductModel(
       brand: brand,
       name: "Razer Book 13",
       price: "40,000 EGP",
       image: Images.razerLaptop,
       type: "Ultrabook",
       storeURL: "https://www.razer.com",
       overview: "Razer Book 13 is a sleek ultrabook designed for professionals who want power and portability.",
       spesification: SpesificationModel(
           processor: "Intel Core i7-1165G7",
           graphics: "Intel Iris Xe",
           display: "13.4-inch FHD+ 60Hz",
           memory: "16GB LPDDR4X",
           storage: "512GB SSD",
           operatingSystem: "Windows 11",
           ports: "Thunderbolt 4, USB-A, HDMI",
           camera: "1080p IR Webcam",
           audio: "THX Certified Stereo Speakers",
           battery: "Up to 12 hours"
       ),
       reviews: reviewList,
       isFavorite: false
   )
]
