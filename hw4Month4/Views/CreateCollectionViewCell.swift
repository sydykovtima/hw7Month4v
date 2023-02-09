//
//  CreateCollectionViewCell.swift
//  hw4Month4
//
//  Created by Mac on 9/2/2023.
//

import UIKit

class CreateCollectionViewCell: UICollectionViewCell {
    
    static var reuseId = String(describing: CreateCollectionViewCell.self)
    
    @IBOutlet private weak var namesProduct: UILabel!
    @IBOutlet private weak var costProduct: UILabel!
    @IBOutlet private weak var detailsProduct: UILabel!
    @IBOutlet private weak var categoryProduct: UILabel!
    @IBOutlet private weak var brendProduct: UILabel!

//    func display(item: CreateProducts ) {
//        namesProduct.text = item.name
//        costProduct.text = item.cost
//        detailsProduct.text = item.details
//        categoryProduct.text = item.сategory
//        brendProduct.text = item.brend
//        namesProduct.text = item.сategory
//    }
}
