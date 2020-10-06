//
//  CategoriesViewModel.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation


import Foundation
import TTGSnackbar

class CategoriesViewModel: BaseViewModel {
    
    var reloadProductsData: (() -> Void)?
    var producst: [ProductModel?]?
    lazy var service = ProductsService()
    var showLoadingIndicator: (() -> Void)?
    var hideLoadingIndicator: (() -> Void)?
    
    
    // MARK: - Get Products From API
    
    func getCategories() {
        
        self.showLoadingIndicator?()
       
        let cachedProducts = CachingManager.getProducts()
        if cachedProducts != nil {
               self.hideLoadingIndicator?()
        }
            self.producst = cachedProducts
           
            guard cachedProducts == nil else { return }
        
        service.getCategories(success: {  [weak self] (response) in
            guard let self = self else {return}
            
            guard let responseArray = response as? [Any?] else { return }
            self.producst = responseArray.map { ProductModel(from: $0) }
            CachingManager.setProducts(self.producst)
            self.reloadProductsData?()
            self.hideLoadingIndicator?()
            print(self.producst!)
    
        }) { (response, erorr) in
            SnackBar.showMessage("An Error Occured, Please Try Again Later")
             self.hideLoadingIndicator?()
        }
        
    }
    
    
    // MARK: - Products
    
    func numberOfProducts() -> Int {

        return producst?.count ?? 0

    }
    
    func product(atIndex index: Int) -> ProductModel? {

        return producst?[index]

    }

}
