//
//  Service.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    
    //MARK: AUTHENTIFICATION
    
    func SignIn() async -> AnyPublisher<DataResponse<SignInRes, NetworkError>, Never>
    
    func GetCurrentUser() async -> AnyPublisher<DataResponse<UserRes, NetworkError>, Never>
    
    
}

class Service {
    static let shared: ServiceProtocol = Service()
    private init() { }
}
