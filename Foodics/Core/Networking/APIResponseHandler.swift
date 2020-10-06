//
//  APIResponseHandler.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/26/20.
//  Copyright © 2020 Global On. All rights reserved.
//


import UIKit

class APIResponseHandler: NSObject {
    
    func handleResponse(_ responseModel: APIResponseModel, endPoint: EndPoint, success: APISuccess, failure: APIFailure) {
        
        let result = responseModel.data?.value
        
        if responseModel.data != nil{

            success?(result)
            
        }
}
}
