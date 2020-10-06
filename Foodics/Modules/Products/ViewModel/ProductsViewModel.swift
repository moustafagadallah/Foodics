//
//  ProductsViewModel.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/26/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation
import TTGSnackbar

class ProductsViewModel: BaseViewModel {
      
    // MARK: - Variables
    
    var reloadProductsData: (() -> Void)?
    var producst: [Category?]?
    lazy var service = ProductsService()
    var showLoadingIndicator: (() -> Void)?
    var hideLoadingIndicator: (() -> Void)?

    
    // MARK: - Get Products From API
    
    func getProducts() {
    
  
        let cachedCategories = CachingManager.getCategories()
        if cachedCategories != nil {
           self.hideLoadingIndicator?()
        }
        self.producst = cachedCategories
       // self.hideLoadingIndicator?()
        guard cachedCategories == nil else { return }

        self.showLoadingIndicator?()
        
        service.getCategories(success: {  [weak self] (response) in
            
            guard let self = self else {return}
    
            guard let responseArray = response as? [Any?] else { return }
            
             self.producst = responseArray.map { Category(from: $0) }
            CachingManager.setCategories(self.producst)
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
    
    func product(atIndex index: Int) -> Category? {
        
        return producst?[index]
        
    }
    
    
    
}
