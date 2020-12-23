//
//  LoginController.swift
//  FastMessage
//
//  Created by Станислав Лемешаев on 22.12.2020.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bubble.right")
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var emailContainerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        // imageView
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope")
        imageView.tintColor = .white
        containerView.addSubview(imageView)
        imageView.centerY(inView: containerView)
        imageView.anchor(left: containerView.leftAnchor, paddingLeft: 8)
        imageView.setDimensions(height: 24, width: 28)
        
        // emailTextField
        containerView.addSubview(emailTextField)
        emailTextField.centerY(inView: containerView)
        emailTextField.anchor(left: imageView.rightAnchor,
                              bottom: containerView.bottomAnchor,
                              right: containerView.rightAnchor,
                              paddingLeft: 8, paddingBottom: -8)
        
        containerView.setHeight(height: 50)
        return containerView
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.textColor = .white
        return textField
    }()
    
    private lazy var passwordContainerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        // imageView
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "lock")
        imageView.tintColor = .white
        containerView.addSubview(imageView)
        imageView.centerY(inView: containerView)
        imageView.anchor(left: containerView.leftAnchor, paddingLeft: 8)
        imageView.setDimensions(height: 24, width: 28)
        
        // passwordTextField
        containerView.addSubview(passwordTextField)
        passwordTextField.centerY(inView: containerView)
        passwordTextField.anchor(left: imageView.rightAnchor,
                              bottom: containerView.bottomAnchor,
                              right: containerView.rightAnchor,
                              paddingLeft: 8, paddingBottom: -8)
        
        containerView.setHeight(height: 50)
        return containerView
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.textColor = .white
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .systemRed
        button.setHeight(height: 50)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        configureGradientLayer()
        view.addSubview(iconImage)
        
        iconImage.centerX(inView: view)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        iconImage.setDimensions(height: 120, width: 120)
        
        let stackView = UIStackView(arrangedSubviews: [emailContainerView,
                                                       passwordContainerView,
                                                       loginButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        
        view.addSubview(stackView)
        
        stackView.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor,
                         paddingTop: 32, paddingLeft: 32, paddingRight: 32)
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor,
                           UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
