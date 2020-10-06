//
//  CategoriesCollectionViewCell.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import UIKit
import AlamofireImage

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: -  Outlets

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var categoryIdLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    
    
    // MARK: -  Show Category
    
    func showCategoryDetails(_ category:ProductModel?) {
        
        idLabel.text = category?.id
        nameLabel.text = category?.nameLocalized
        priceLabel.text = category?.cost?.description
      
        categoryIdLabel.text = category?.isReady?.description
        if let imageUrlString = category?.image,
            let imageUrl = URL(string: imageUrlString) {
            categoryImage.af.setImage(withURL: imageUrl)
        }
        
    }
}
