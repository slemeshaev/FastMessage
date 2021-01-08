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
protocol NewMessageControllerDelegate: class {
    func controller(_ controller: NewMessageController, wantsToStartChatWith user: User)
}

protocol CustomInputAccessoryViewDelegate: class {
    func inputView(_ inputView: CustomInputAccessoryView, wantsToSend message: String)
}
