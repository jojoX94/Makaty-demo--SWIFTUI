//
//  Constant.swift
//  Makaty_UI
//
//  Created by Madiapps on 03/01/2023.
//

import Foundation
import Alamofire

struct Constants {
    static let baseURL = "https://makaty.madiapps.com/api"
    static let apiKey = "abc123"
    static let timeoutInterval: TimeInterval = 30.0
    static let maxRetries = 3
    
    static let AppAlreadyLaunchedOnceKey = "isAppAlreadyLaunchedOnce"
    
    static let accessTokenKey = "access_token"
    static let tokenExpirationKey = "token_expiration"
    
    static var headers: HTTPHeaders {
        let token = UserDefaults.standard.string(forKey: accessTokenKey)
        
        if let token = token {
            
            let _headers: HTTPHeaders = [
                .accept("*/*"),
                .contentType("application/json"),
                .authorization(bearerToken: token)
            ]
            
            return _headers
        } else {
            return [
                .accept("*/*"),
                .contentType("application/json")
            ]
        }
    }
}
