//
//  NetworkErrorDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import Alamofire
import Foundation

struct NetworkError: Error {
    let initialError: AFError
    let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}
