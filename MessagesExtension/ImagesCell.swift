//
//  ImagesCell.swift
//  MessageDemo
//
//  Created by liwei on 16/9/19.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit
import Messages

class ImagesCell: UICollectionViewCell {
    
    static let reuseIdentifier = "ImagesCellId"
    
    @IBOutlet weak var stickerView: MSStickerView!
}
