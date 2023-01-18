//
//  EndPoint.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import Foundation

import Foundation
import Combine
import Alamofire

extension Service: ServiceProtocol {
    
    func SignIn() async  -> AnyPublisher<DataResponse<SignInRes, NetworkError>, Never>
    {
        let url = URL(string: Constants.baseURL + "/login_check")!
        
        let signInBody = SignInBody(email: "userone@example.com", password: "0000")
        
        return AF.request(url, method: .post, parameters: signInBody, encoder: JSONParameterEncoder.default, headers: Constants.headers)
            .validate()
            .publishDecodable(type: SignInRes.self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    func GetCurrentUser() async -> AnyPublisher<DataResponse<UserRes, NetworkError>, Never> {
        
        let url = URL(string: Constants.baseURL + "/me")!

        return AF.request(url, method: .get,  headers: Constants.headers)
            .validate()
            .publishDecodable(type: UserRes.self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: nil)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    
}
