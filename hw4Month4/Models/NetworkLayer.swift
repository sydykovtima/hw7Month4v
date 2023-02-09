//
//  File.swift
//  hw4Month4
//
//  Created by Mac on 9/2/2023.
//

import Foundation

final class NetworkLayer {
    static let shared = NetworkLayer()
    
    private init() { }
    
    func fetchProducts() throws -> [Product]? {
        let decoder = JSONDecoder()
        let product = try? decoder.decode([Product].self, from: Data(productJSON.utf8))
        return product
    }
    func fetchCategory() throws -> [Category]? {
        let decode = JSONDecoder()
        let category = try? decode.decode([Category].self, from: Data(categoryJSON.utf8))
        return category
    }
    func fetchOrderType() throws -> [TypeOfOrder]? {
        let decod = JSONDecoder()
        let orderType = try? decod.decode([TypeOfOrder].self, from: Data(orderTypeJSON.utf8))
        return orderType
    }
}


