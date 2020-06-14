//
//  LoginResponseModel.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//


import Foundation

struct LoginResponseModel {
    
    var cus_id: String
    var cus_name: String
    var cus_shop: String
    var cus_city: String
    var cus_mobile:String
    var cus_address:String
    var cus_total_balance : String
    var cus_balance_limit : String
    
    init(cusID: String,custName: String,custShop: String,custCity:String,custMobile:String,custAddress:String,custTotalBal:String,custBalanceLimit:String) {
        
        cus_id = cusID
        cus_name = custName
        cus_shop = custShop
        cus_city = custCity
        cus_mobile = custMobile
        cus_address = custAddress
        cus_total_balance = custTotalBal
        cus_balance_limit = custBalanceLimit
        
    }
    
    init() {
        
        cus_id = String()
        cus_name = String()
        cus_shop = String()
        cus_city = String()
        cus_mobile = String()
        cus_address = String()
        cus_total_balance = String()
        cus_balance_limit = String()
    }
}
