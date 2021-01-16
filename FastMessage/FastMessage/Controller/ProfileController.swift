//
//  ProfileController.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 15.01.2021.
//

import UIKit

class ProfileController: UITableViewController {
    
    // MARK: - Properties
    
    private static let reuseId = "ProfileCell"
    private lazy var headerView = ProfileHeader(frame: .init(x: 0, y: 0,
                                                             width: view.frame.width,
                                                             height: 380))
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
    }
    
    // MARK: - Selectors
    
    // MARK: - API
    
    // MARK: - Helpers
    
    func configureUI() {
        tableView.backgroundColor = .white
        
        tableView.tableHeaderView = headerView
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ProfileController.reuseId)
        tableView.tableFooterView = UIView()
        tableView.contentInsetAdjustmentBehavior = .never
    }
    
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ProfileController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileController.reuseId, for: indexPath)
        return cell
    }
}
