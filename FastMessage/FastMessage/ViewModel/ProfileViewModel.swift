//
//  ProfileViewModel.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 18.01.2021.
//

import Foundation

enum ProfileViewModel: Int, CaseIterable {
    case accountInfo
    case settings
    
    var description: String {
        switch self {
        case .accountInfo: return "Информация о пользователе"
        case .settings: return "Настройки"
        }
    }
    
    var iconImageName: String {
        switch self {
        case .accountInfo: return "person.circle"
        case .settings: return "gear"
        }
    }
    
}
