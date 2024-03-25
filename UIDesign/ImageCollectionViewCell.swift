//
//  ImageCollectionViewCell.swift
//  UIDesign
//
//  Created by Simran on 08/03/24.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
   // @IBOutlet weak var titleTask: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    
}

class ReminderCollectionView: UITableViewCell {
    
   // @IBOutlet weak var titleTask: UILabel!

    @IBOutlet weak var picture: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 30, right: 10))
    }
    
}
