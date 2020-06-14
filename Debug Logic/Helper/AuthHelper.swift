//
//  AuthHelper.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import Foundation

class AuthHelper {
    static let shared = AuthHelper()
    
    
    func LoginUser(_ username:String, _ password:String, completionHandler: @escaping ((_ response: Any,_ msg:String) -> Void))
    {
        let body = [
        "user_name": username,
        "password": password
        ] as [String : Any]
        
        let decoder = JSONDecoder()
        var msg = ""
        var statuss = Bool()
        
        func throwError(_ msg: String? = "Bad Server Response.Please Contact your Service Provider"){
            DispatchQueue.main.async {completionHandler("",msg!)}
        }
        NetworkHandler.shared.sendHTTPPostReq(with: APIEndPoints.loginUser, and: body, completionHandler: { (status, response) in
            print("====",response)
        })
    }


    func customerLedger(_ custID:Int, completionHandler: @escaping ((_ response: Any,_ msg:String) -> Void))
    {
        let body = [
        "cus_id": custID
        ] as [String : Any]
        
        let decoder = JSONDecoder()
        var msg = ""
        var statuss = Bool()
        
        func throwError(_ msg: String? = "Bad Server Response.Please Contact your Service Provider"){
            DispatchQueue.main.async {completionHandler("",msg!)}
        }
        NetworkHandler.shared.sendHTTPPostReq(with: APIEndPoints.getCustomerLedger, and: body, completionHandler: { (status, response) in
            print("=============================",response)
        })
    }


}
