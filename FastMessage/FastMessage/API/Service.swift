//
//  Service.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 03.01.2021.
//

import Firebase

struct Service {
    
    static func fetchUsers() {
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ document in
                print(document.data())
            })
        }
    }
    
    
}
