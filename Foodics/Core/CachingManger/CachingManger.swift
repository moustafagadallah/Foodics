//
//  CachingManger.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation

class CachingManager: NSObject {
    
    class func store(value: Any?, forKey key: String) {
        
        UserDefaults.standard.set(value, forKey: key)
    }
    
    class func removeValue(forKey key: String) {
        
        UserDefaults.standard.removeObject(forKey: key)
    }
    
    class func getValue(forKey key: String) -> Any? {
        
        return UserDefaults.standard.value(forKey: key)
    }
    
    class func setCategories(_ categories: [Category?]?) {
        
        guard let categories = categories else { return }
        do {
            let categories = try JSONEncoder().encode(categories)
            UserDefaults.standard.set(categories, forKey: CachingKeys.Categories)
            
        } catch { }
    }
    
    class func setProducts(_ products: [ProductModel?]?) {
        
        guard let products = products else { return }
        do {
            let products = try JSONEncoder().encode(products)
            UserDefaults.standard.set(products, forKey: CachingKeys.Products)
            
        } catch { }
    }
    
    class func getProducts() -> [ProductModel?]? {
        
        guard let productsData = UserDefaults.standard.object(forKey: CachingKeys.Products) as? Data else { return nil }
        
        do {
            let products = try JSONDecoder().decode([ProductModel?]?.self, from: productsData)
            return products
            
        } catch { }
        
        return nil
    }
    
    
    class func getCategories() -> [Category?]? {
        
        guard let categoriesData = UserDefaults.standard.object(forKey: CachingKeys.Categories) as? Data else { return nil }
        
        do {
            let categories = try JSONDecoder().decode([Category?]?.self, from: categoriesData)
            return categories
            
        } catch { }
        
        return nil
    }
    
}
