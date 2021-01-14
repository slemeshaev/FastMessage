//
//  ConversationCell.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 14.01.2021.
//

import UIKit

class ConversationCell: UITableViewCell {
    
    // MARK: - Properties
    
    
    
    var conversation: Conversation? {
        didSet { configure() }
    }
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configure() {
        //
    }
}
