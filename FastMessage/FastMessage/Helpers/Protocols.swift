//
//  Protocols.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 26.12.2020.
//

import Foundation

// MARK: - Protocols
protocol AuthenticationProtocol {
    var formIsValid: Bool { get }
}

protocol AuthenticationControllerProtocol {
    func checkFormStatus()
}

// MARK: - Delegates

protocol AuthenticationDelegate: class {
    func authenticationComplete()
}

protocol ProfileHeaderDelegate: class {
    func dismissController()
}

protocol ProfileControllerDelegate: class {
    func handleLogout()
}

protocol ProfileFooterDelegate: class {
    func handleLogout()
}

protocol NewMessageControllerDelegate: class {
    func controller(_ controller: NewMessageController, wantsToStartChatWith user: User)
}

protocol CustomInputAccessoryViewDelegate: class {
    func inputView(_ inputView: CustomInputAccessoryView, wantsToSend message: String)
}
