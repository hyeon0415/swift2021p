//
//  BountyInfo.swift
//  BountyList
//
//  Created by 양현 on 2021/06/14.
//

import UIKit

struct BountyInfo {
    let name: String
    let bounty: Int
    var image: UIImage? {
        return UIImage(named: "\(name).JPG")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}

