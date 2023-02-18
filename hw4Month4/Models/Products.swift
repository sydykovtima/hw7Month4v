//
//  File.swift
//  hw4Month4
//
//  Created by Mac on 7/2/2023.
//

import UIKit


let productJSON = """
[{
        "productsImageView": "Burger Craze",
        "nameProducts": "Burger Craze",
        "openClose": "Open ",
        "delivery": "Free",
        "madeOnTheWord": "American: Burgers",
        "time": "1.5 km",
        "cost": "minimum 10$",
        "rate": "4.6(601)",
        "distance": "15-20 min"
},
{
        "productsImageView": "Vegetarian Pizza",
        "nameProducts": "Vegetarian Pizza",
        "openClose": "Open",
        "delivery": "Free",
        "madeOnTheWord": "American: Pizza",
        "time": "1.5 km",
        "cost": "minimum 10$",
        "rate": "4.6(601)",
        "distance": "15-20 min"
}
]
"""

struct Product: Decodable {
    let productsImageView: String
    let nameProducts: String
    let openClose: String
    let delivery: String
    let madeOnTheWord: String
    let time: String
    let cost: String
    let rate: String
    let distance: String
    enum CodingKeys: CodingKey {
        case productsImageView
        case nameProducts
        case openClose
        case delivery
        case madeOnTheWord
        case time
        case cost
        case rate
        case distance
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.productsImageView = try container.decode(String.self, forKey: .productsImageView)
        self.nameProducts = try container.decode(String.self, forKey: .nameProducts)
        self.openClose = try container.decode(String.self, forKey: .openClose)
        self.delivery = try container.decode(String.self, forKey: .delivery)
        self.madeOnTheWord = try container.decode(String.self, forKey: .madeOnTheWord)
        self.time = try container.decode(String.self, forKey: .time)
        self.cost = try container.decode(String.self, forKey: .cost)
        self.rate = try container.decode(String.self, forKey: .rate)
        self.distance = try container.decode(String.self, forKey: .distance)
        let containerr = try decoder.container(keyedBy: CodingKeys.self)
        let coder = JSONDecoder()
        coder.keyDecodingStrategy = .convertFromSnakeCase
    }
}

struct Products: Decodable {
    let product: [Product]
}
