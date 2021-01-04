//
//  User.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 03.01.2021.
//

struct User {
    let uid: String
    let profileImageUrl: String
    let userName: String
    let fullName: String
    let email: String
    
    init(dictionary: [String: Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.userName = dictionary["userName"] as? String ?? ""
        self.fullName = dictionary["fullName"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
}
