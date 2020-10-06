//
//  ProductsCollectionViewCell.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import UIKit
import AlamofireImage

class ProductsCollectionViewCell: UICollectionViewCell {
    
    // MARK: -  Outlets
    
    @IBOutlet weak var categoryIdLabel: UILabel!
    @IBOutlet weak var catecoryImage: UIImageView!
    @IBOutlet weak var categoryId: UILabel!
    
    
    // MARK: - Show Product
    
    func showProductDetails(_ category:Category?) {
        
        categoryId.text = category?.id?.description
        categoryIdLabel.text = category?.nameLocalized
    if let imageUrlString = category?.image,
              let imageUrl = URL(string: imageUrlString) {
              catecoryImage.af.setImage(withURL: imageUrl)
          }
    }
    
    
}
