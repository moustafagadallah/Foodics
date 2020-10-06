//
//  Constants.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 9/25/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import Foundation
import UIKit


//MARK:- APIS

enum API {
    
    static let GetProducts = "/categories"
    static let GetCategoreis = "/products?include=category"

    
}

enum CachingKeys {
    
    static let Products = "Products"
    static let Categories = "Categories"
   

}
enum Storyboards {
    
    static let Products = "Products"
    static let Categories = "Categories"
}

enum Token {
    
    static let APIToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFmNmZlMTg4ZjExZmM4OTFjYWQyMjQ4NTBiNGI0NmYyZDY5OTFkMjI5NmQ1N2ExYzgyZGVkYmNjNGQ5NDYxOWRmMmI3NjVhNjBlZTcyOTk4In0.eyJhdWQiOiI4Zjc4NjY2NC0wNTg5LTQ3MTgtODBkMS1lMTY4M2FmYmM3MjQiLCJqdGkiOiIxZjZmZTE4OGYxMWZjODkxY2FkMjI0ODUwYjRiNDZmMmQ2OTkxZDIyOTZkNTdhMWM4MmRlZGJjYzRkOTQ2MTlkZjJiNzY1YTYwZWU3Mjk5OCIsImlhdCI6MTYwMDc4MDU0MywibmJmIjoxNjAwNzgwNTQzLCJleHAiOjE2MzIzMTY1NDIsInN1YiI6IjhmN2I2NmYwLWE1MjctNGNkNC05MjNkLTYyODM3MDQ1Yjk5NSIsInNjb3BlcyI6WyJnZW5lcmFsLnJlYWQiXSwiYnVzaW5lc3MiOiI4ZjdiNjZmMC1hNTUxLTRlNmYtODU5Mi0wMmRhZjBjNTUzODYiLCJyZWZlcmVuY2UiOiIxMDAwMDAifQ.IIo6HiobhLdS39-I5sh3TRjHUa5-h7ecQSNk1exqHDDbGSDZRN4J_XaGOMrCRjXXt_GN-7-b9zYEtBLBqtF-PXi_HKYobXzf15f2urW-ZNztZS6bBpUh9Dblw1LExtXIPNxQW0dZAwEUi5Qk11rgdqPmsfQ8nAqefFq22DwONo8tJtKWHolHpbf7OXZLLG3Q2UJAtlffnta_PCJYG6mb4iGhNbNm3seDvN-gqFhmoxBgeCYySgIuf1cHkYDUa4QBUzltZ4G_t9AbCvrU2Nn5G87jg8Jw4qwOkxYiwSVo5mLNb7VVdhcKl9S0VsnTVopszYCcBbN24h1xRbdDGlKIZEMo9-J2gccF54RNi0s193faRVPTIQeABnWkiDKIx55wSplczjiXK3YIDQ25R3twBBByy-JPOUsclcRJfOqcmcqhljXyxPaUg9qxiNHqkixQSVv-tf8hI6TQvu_prRtmZz-q1ejkPKZmZ0aMeXpYYj1l2wbTJ8XJIaBpKfrw0spENfr6R9WQYT_HSDpME8DZ54Rz3SHy0MaZbI0B9YNKzmjkiSP5tFOZjCA_AOLD0D2OEYFxXFe_hKnyhSAC1raXGIMfmm3x8ay6hybn_aibbplToDHHLm_8UkrvuSbwXyx9JnROc0jbKoeXYzGJ_e1u5vrZvVVSLgtHWb3AsLs_bxs"
    
}
