//
//  CollectionViewCell.swift
//  uicollectionviewtest
//
//  Created by Антон Коваленко on 04/10/2018.
//  Copyright © 2018 Антон Коваленко. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var background: UIView!
    
    
    @IBOutlet weak var first: UILabel!
    
    @IBOutlet weak var index: UILabel!
    
    
    
    override func awakeFromNib() {
        background.layer.borderWidth = 1
        background.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    func setupCell(first: Character, index: Int) {
        self.first.text = String(first)
        self.index.text = String(index)
    }
    
}
