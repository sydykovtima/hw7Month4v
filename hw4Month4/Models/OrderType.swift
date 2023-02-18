//
//  productInfo.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit

let orderTypeJSON = """
[{
        "orderOfType": "Delivery",
        "colorForText": "",
        "backGroundColorForText": ""
},
{
        "orderOfType": "Pick Up",
        "colorForText": "",
        "backGroundColorForText": ""
},
{
        "orderOfType": "Catering",
        "colorForText": "",
        "backGroundColorForText": ""
},
{
        "orderOfType": "Curbside",
        "colorForText": "",
        "backGroundColorForText": ""
}
]
"""

struct TypeOfOrder: Decodable {
    let orderOfType: String
}
 








