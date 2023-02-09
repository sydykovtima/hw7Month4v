//
//  CategoryCollectionViewCell.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//
import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: CategoryCollectionViewCell.self)
    @IBOutlet private weak var categoryImages: UIImageView!
    @IBOutlet private weak var categoryLabel: UILabel!
    
    func display(item: Category) {
        categoryImages.image = UIImage(named: item.imagesCategory)
        categoryLabel.text = item.name
        categoryLabel.textColor = .black
        categoryImages.layer.borderWidth = 3
        categoryImages.layer.borderColor = UIColor.orange.cgColor
    }
}

let categoryJSON = """
[{
        "imagesCategory": "Take aways image",
        "name": "Take aways"
},
{
        "imagesCategory": "Grocery Image",
        "name": "Grocery"
},
{
        "imagesCategory": "Convience Image",
        "name": "Convience"
},
{
        "imagesCategory": "Pharmacy Image",
        "name": "Pharmacy"
}
]
"""



struct Category: Decodable {
    let imagesCategory: String
    let name: String
}



