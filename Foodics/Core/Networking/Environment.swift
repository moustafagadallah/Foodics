//
//  Environment.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/25/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation


#if DEBUG
let environment: Environment = Environment.testing
#else
let environment: Environment = Environment.production
#endif


enum Environment {
    
    case testing
    case production
    
    
    var baseURL: String {
        
        switch self {
            
        case .testing:
            return "https://api.foodics.dev/v5"
            
        case .production:
            return "https://api.foodics.dev/v5"
        }
    }
    
   
  
}
