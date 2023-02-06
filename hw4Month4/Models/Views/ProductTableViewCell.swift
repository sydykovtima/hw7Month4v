//
//  ProductTableViewCell.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit

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
    @IBOutlet private weak var productImageView: UIImageView!

    func display(item: Product) {
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

}

struct Product {
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

