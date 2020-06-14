//
//  APIEndPoints.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import Foundation

struct BaseUrl {
    
    static let baseUrl = "http://waseem.inventorysystem.website/Api" // dev server
}

struct APIEndPoints {
   
    static let getCustomerLedger = "\(BaseUrl.baseUrl)/get_customer_ledger"
    static let loginUser = "\(BaseUrl.baseUrl)/login_authentication"

}
