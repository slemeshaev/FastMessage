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
    private lazy var customInputView: CustomInputAccessoryView = {
        let iv = CustomInputAccessoryView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        return iv
    }()
    
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar(withTitle: user.userName, prefersLargeTitles: false)
    }
    
    override var inputAccessoryView: UIView? {
        return customInputView
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
    }
    
}
