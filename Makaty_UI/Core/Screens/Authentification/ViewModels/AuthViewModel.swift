//
//  AuthViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import SwiftUI
import Combine

@MainActor
class AuthViewModel: ObservableObject {
    private let userDefaults = UserDefaults.standard
    private var cancellableSet: Set<AnyCancellable> = []

    var dataManager: ServiceProtocol
    @Published var user: UserDataModel?
    @Published var isLoading = false
    
    var accessToken: String? {
        get {
            return userDefaults.string(forKey: Constants.accessTokenKey)
        }
        set {
            userDefaults.set(newValue, forKey: Constants.accessTokenKey)
        }
    }
    var tokenExpiration: Date? {
        get {
            return userDefaults.object(forKey: Constants.tokenExpirationKey) as? Date
        }
        set {
            userDefaults.set(newValue, forKey: Constants.tokenExpirationKey)
        }
    }
    var isLoggedIn: Bool {
        return accessToken != nil && user != nil
    }
    
    init(dataManager: ServiceProtocol = Service.shared) {
        self.dataManager = dataManager
        Task {
            isLoading = true
            await self.login()
            await self.getCurrentUser()
            isLoading = false
        }
    }

    
    func login() async {
        if (!isLoggedIn) {
            await dataManager
                .SignIn()
                .sink { response in
                    if response.error != nil {
                        
                    } else {
                        UserDefaults.standard.set(response.value!.token, forKey: Constants.accessTokenKey)
                    }
                }
                .store(in: &cancellableSet)
        }
    }
    
    func getCurrentUser() async {
        await dataManager
            .GetCurrentUser()
            .sink { [weak self] response in
                if response.error != nil {
                    
                } else {
                    self?.user = self?.mapTo(model: response.value!)
                }
            }
            .store(in: &cancellableSet)
    }
    
    func logout() {
        accessToken = nil
        user = nil
        tokenExpiration = nil
    }
    
    func mapTo(model: UserRes) -> UserDataModel {
        return UserDataModel(name: model.name, firstName: model.firstName, email: model.email, password: model.password, activationPush: model.activationPush, uuid: model.uuid, pointBeginning: model.pointBeginning, contactPhone: model.contactPhone, preferencesProducts: model.preferencesProducts, subscriptionDate: model.subscriptionDate)
    }
}

