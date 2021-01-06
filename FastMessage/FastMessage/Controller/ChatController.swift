//
//  ChatController.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 06.01.2021.
//

import UIKit

class ChatController: UICollectionViewController {
    
    // MARK: - Properties
    
    private let user: User
    
    // MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        print("DEBUG: User in chat controller is \(user.userName)")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
    }
    
}
