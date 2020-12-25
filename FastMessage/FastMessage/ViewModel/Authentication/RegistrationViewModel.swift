//
//  RegistrationViewModel.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 26.12.2020.
//

import Foundation

protocol AuthenticationProtocol {
    var formIsValid: Bool { get }
}

struct RegistrationViewModel: AuthenticationProtocol {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
