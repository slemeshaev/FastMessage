//
//  NewMessageController.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 01.01.2021.
//

import UIKit

class NewMessageController: UITableViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .systemPink
    }
}
