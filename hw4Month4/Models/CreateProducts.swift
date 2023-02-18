//
//  NetworkLayer.swift
//  hw4Month4
//
//  Created by Mac on 9/2/2023.
//

import Foundation

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




