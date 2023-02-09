//
//  ProductTableViewCell.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit

protocol ProductsCellDelegate: AnyObject {
    func didSelectionsProducts (item: Product)
        
    }

class ProductTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = String(describing: ProductTableViewCell.self)
    @IBOutlet private weak var rateLable: UILabel!
    @IBOutlet private weak var distanceLable: UILabel!
    @IBOutlet private weak var productNameLable: UILabel!
    @IBOutlet private weak var openCloseLable: UILabel!
    @IBOutlet private weak var timeLable: UILabel!
    @IBOutlet private weak var costLable: UILabel!
    @IBOutlet private weak var deliveryLable: UILabel!
    @IBOutlet private weak var whereFromProducts: UILabel!
    @IBOutlet private weak var productImageView: UIImageView! {
        didSet {
            productImageView.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(didTapOnImage))
            productImageView.addGestureRecognizer(tap)
        }
    }

    weak var delegate: ProductsCellDelegate?
    private var products: Product?
        public func display(item: Product) {
        products = item
        productImageView.image = UIImage(named: item.productsImageView)
        whereFromProducts.text = item.madeOnTheWord
        productNameLable.text = item.nameProducts
        openCloseLable.text = item.openClose
        deliveryLable.text = item.delivery
        distanceLable.text = item.distance
        rateLable.text = item.rate
        timeLable.text = item.time
        costLable.text = item.cost
        openCloseLable.textColor = .systemGreen
        deliveryLable.textColor = .lightGray
        distanceLable.backgroundColor = .orange
        rateLable.textColor = .lightGray
        costLable.textColor = .lightGray
        whereFromProducts.textColor = .lightGray
    }
    @objc
    private func didTapOnImage() {
        print("Selections tapped")
        
        guard let products = products else {
            return
        }
        delegate?.didSelectionsProducts(item: products)
    }
}


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
}

//смыччсмвы
