//
//  productInfo.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit



struct Products {

    static let reuseIdentifier = String(describing: Products.self)
    var titleSub: String?
    var createCostLable: String?
    var createInfoProducts: String?
    var categoryProducts: String?
    var brendProducts: String?
}

extension Products {
    public func printAllInfo() -> Array<Products> {
        return [Products(titleSub: "Наименование продукта",
                createCostLable: "цена продукта",
                createInfoProducts: "Детальеное описание продукта",
                categoryProducts: "Категория продукта",
                brendProducts: "Бренд продукта"
        )
        ]
    }
}
