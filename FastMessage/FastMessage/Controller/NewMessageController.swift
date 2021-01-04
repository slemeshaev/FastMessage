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
    private var users = [User]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        fetchUsers()
    }
    
    // MARK: - Selectors
    @objc func handleDismissal() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - API
    
    func fetchUsers() {
        Service.fetchUsers { users in
            self.users = users
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Helpers
    func configureUI() {
        configureNavigationBar(withTitle: "Новое сообщение", prefersLargeTitles: false)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismissal))
        
        tableView.tableFooterView = UIView()
        tableView.register(UserCell.self, forCellReuseIdentifier: NewMessageController.reuseId)
        tableView.rowHeight = 80
    }
}

// MARK: - UITableViewDataSource
extension NewMessageController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewMessageController.reuseId, for: indexPath) as! UserCell
        cell.user = users[indexPath.row]
        return cell
    }
}
