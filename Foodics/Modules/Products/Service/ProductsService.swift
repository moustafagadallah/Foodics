//
//  ProductsService.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/26/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation
class ProductsService : BaseService {

func getCategories(success: APISuccess, failure: APIFailure) {

        let endPoint = EndPoint(path: API.GetProducts, method: .get, parameters: nil)
    NetworkManager.manager.request(endPoint: endPoint, success: success, failure: failure)
    
    
}
}
