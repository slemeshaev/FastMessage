//
//  NewMessageController.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 01.01.2021.
//

import UIKit

class NewMessageController: UITableViewController {
    
    // MARK: - Properties
    private static let reuseId = "UserCell"
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    @objc func handleDismissal() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helpers
    func configureUI() {
        configureNavigationBar(withTitle: "Новое сообщение", prefersLargeTitles: false)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismissal))
        
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: NewMessageController.reuseId)
        tableView.rowHeight = 80
    }
}

// MARK: - UITableViewDataSource
extension NewMessageController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewMessageController.reuseId, for: indexPath)
        cell.textLabel?.text = "Test Cell"
        return cell
    }
}
