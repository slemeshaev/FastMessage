//
//  LoginViewModel.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 25.12.2020.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
