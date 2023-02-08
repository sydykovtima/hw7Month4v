//
//  OrderTypeCollectonViewCell.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit

class OrderTypeCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifierForOrderType = String(describing: TypeOfOrder.self)
    @IBOutlet private weak var typeOfOrderLable: UILabel!
    @IBOutlet private weak var deliveryImage: UIImageView!
    func display(item: TypeOfOrder) {
        typeOfOrderLable.text = item.orderOfType
        typeOfOrderLable.layer.borderColor = UIColor.lightGray.cgColor
        typeOfOrderLable.layer.cornerRadius = 20
        typeOfOrderLable.layer.borderWidth = 2
        typeOfOrderLable.textColor = item.colorForText
    }
}

struct TypeOfOrder {
    let orderOfType: String
    let colorForText: UIColor
    let backGroundColorForText: UIColor
}
 
