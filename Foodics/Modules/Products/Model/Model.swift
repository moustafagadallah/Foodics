//
//  Model.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/26/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import UIKit
import AnyCodable

class ProductModel: BaseModel, Codable {

    var category: Category?
    var ingredients: [String]?
    var id: String?
    var sku: String?
    var barcode: String?
    var name: String?
    var nameLocalized: String?
    var descriptionn: String?
    var descriptionLocalized: String?
    var image: String?
    var isActive: Bool?
    var isStockProduct: Bool?
    var isReady: Bool?
    var pricingMethod: Int?
    var sellingMethod: Int?
    var costingMethod: Int?
    var preparationTime: String?
    var price: Int?
    var cost: Double?
    var calories: String?
    var createdAt: String?
    var updatedAt: String?
    var deletedAt: String?
    
    private enum CodingKeys: String, CodingKey {
       
        case category = "category"
        case ingredients = "ingredients"
        case id = "id"
        case sku = "sku"
        case barcode = "barcode"
        case name = "name"
        case nameLocalized = "name_localized"
        case descriptionn = "description"
        case descriptionLocalized = "description_localized"
        case image = "image"
        case isActive = "is_active"
        case isStockProduct = "is_stock_product"
        case isReady = "is_ready"
        case pricingMethod = "pricing_method"
        case sellingMethod = "selling_method"
        case costingMethod = "costing_method"
        case preparationTime = "preparation_time"
        case price = "price"
        case cost = "cost"
        case calories = "calories"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
    }
    
}

//class Category:BaseModel, Codable {
//
//    var id: String?
//    var name: String?
//    var nameLocalized: String?
//    var reference: String?
//    var image: String?
//    var createdAt: String?
//    var updatedAt: String?
//    var deletedAt: String?
//
//}


class Links:BaseModel, Codable {

  var first: String?
  var last: String?
  var prev: String?
  var next: String?

}


class Meta: BaseModel,Codable {

    var currentPage: Int?
    var from: Int?
    var lastPage: Int?
    var path: String?
    var perPage: Int?
    var to: Int?
    var total: Int?

  
}

class RootClass: Codable {

    var data: AnyCodable?
    var links: Links?
    var meta: Meta?

}


class Category: Codable {

    let id: String?
    let name: String?
    let nameLocalized: String?
    let reference: String?
    let image: String?
    let createdAt: String?
    let updatedAt: String?
    let deletedAt: String?

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case nameLocalized = "name_localized"
        case reference = "reference"
        case image = "image"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
    }

   

}


 




