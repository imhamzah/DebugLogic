//
//  NetworkHandler.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import Foundation
import Alamofire

class NetworkHandler {

static let shared = NetworkHandler()
private var sessionManager: SessionManager?

func sendHTTPPostReq(with url:String,and body:[String:Any],
                     completionHandler: @escaping ((_ status: Bool,_ response:Any) -> Void)) {
    
    
    DispatchQueue.global(qos: .userInitiated).async {
        guard Reachability.isConnectedToNetwork() else {
            completionHandler(false,"No Internet Connection.\nPlease Check your internet connection.")
            return
        }
        Alamofire.request(url, method: .post, parameters: body,encoding: JSONEncoding.default, headers: nil).responseJSON {
            response in
           
            print("===========",body)
            print("===========",response)
            
            guard response.response?.statusCode == 200 else{
                completionHandler(false,"Something Went Wrong.")
                return
            }
            switch response.result {
            case .success:
                
                completionHandler(true,response.value)
                break
            case .failure(let error):
                completionHandler(false,error.localizedDescription)
            }
        }
    }
}
    
}
