//
//  CategoriesService.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation
import Foundation
class CategoriesService : BaseService {

    
    func getProducts(success: APISuccess, failure: APIFailure) {

    let endPoint = EndPoint(path: API.GetCategoreis, method: .get, parameters: nil)
    NetworkManager.manager.request(endPoint: endPoint, success: success, failure: failure)
    
    
}
}
