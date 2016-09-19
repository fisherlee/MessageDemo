//
//  AlbumCell.swift
//  MessageDemo
//
//  Created by liwei on 16/9/19.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit

class ListCell: UICollectionViewCell {
    
    static let reuseIdentifier = "ListCellId"
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        label.layer.borderColor = UIColor.lightGray.cgColor
        label.layer.borderWidth = 1
    }
}
