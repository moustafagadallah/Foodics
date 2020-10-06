//
//  Decodable+Parsing.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/26/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation

extension Decodable {
    
    init?(from response: Any?) {
        
        do {
            guard let response = response else { return nil }
            
            let data = try JSONSerialization.data(withJSONObject: response, options: .prettyPrinted)
            self = try JSONDecoder().decode(Self.self, from: data)
            
        } catch {
            
            return nil
        }
    }
}
