//
//  APIResponseModel.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/25/20.
//  Copyright © 2020 Global On. All rights reserved.
//


import UIKit
import AnyCodable

class APIResponseModel: BaseModel, Codable {
    
    var data: AnyCodable?
    var links: AnyCodable?
    var meta: AnyCodable?
    
}

