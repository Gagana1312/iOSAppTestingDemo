////
////  ViewController.swift
////  Testing
////
////  Created by Gagana Ananda on 6/9/24.
//
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    // Login UI Elements
//    let usernameTextField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Username"
//        textField.accessibilityIdentifier = "Username"
//        textField.borderStyle = .roundedRect
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        return textField
//    }()
//
//    let passwordTextField: UITextField = {
//        let textField = UITextField()
//        textField.placeholder = "Password"
//        textField.accessibilityIdentifier = "Password"
//        textField.isSecureTextEntry = true
//        textField.borderStyle = .roundedRect
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        return textField
//    }()
//
//    let loginButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Login", for: .normal)
//        button.accessibilityIdentifier = "Login"
//        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside) // Use `self` here
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//
//    // Account UI Elements
//    let welcomeLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Welcome to your account!"
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.accessibilityIdentifier = "WelcomeLabel"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.isHidden = true
//        return label
//    }()
//
//    let logoutButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Logout", for: .normal)
//        button.accessibilityIdentifier = "Logout"
//        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.isHidden = true
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .black
//
//        // Add subviews
//        view.addSubview(usernameTextField)
//        view.addSubview(passwordTextField)
//        view.addSubview(loginButton)
//        view.addSubview(welcomeLabel)
//        view.addSubview(logoutButton)
//
//        // Set up constraints
//        setupConstraints()
//    }
//
//    func setupConstraints() {
//        // Username TextField Constraints
//        NSLayoutConstraint.activate([
//            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
//            usernameTextField.widthAnchor.constraint(equalToConstant: 250),
//            usernameTextField.heightAnchor.constraint(equalToConstant: 40)
//        ])
//
//        // Password TextField Constraints
//        NSLayoutConstraint.activate([
//            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
//            passwordTextField.widthAnchor.constraint(equalToConstant: 250),
//            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
//        ])
//
//        // Login Button Constraints
//        NSLayoutConstraint.activate([
//            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
//            loginButton.widthAnchor.constraint(equalToConstant: 100),
//            loginButton.heightAnchor.constraint(equalToConstant: 40)
//        ])
//
//        // Welcome Label Constraints
//        NSLayoutConstraint.activate([
//            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40)
//        ])
//
//        // Logout Button Constraints
//        NSLayoutConstraint.activate([
//            logoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            logoutButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
//            logoutButton.widthAnchor.constraint(equalToConstant: 100),
//            logoutButton.heightAnchor.constraint(equalToConstant: 40)
//        ])
//    }
//    func showWelcomeLabel(with username: String) {
//        welcomeLabel.text = "Welcome, \(username)!"
//        welcomeLabel.isHidden = false
//    }
//    @objc func loginTapped() {
//           let username = usernameTextField.text ?? ""
//           let password = passwordTextField.text ?? ""
//
//           if username == "Gagana" && password == "Ananda" {
//               // Handle successful login here
//               // For example, show the welcome label
//               showWelcomeLabel(with: username)
//           } else {
//               // Handle incorrect login attempt
//               // For example, show an alert
//               let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
//               alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//               present(alert, animated: true, completion: nil)
//           }
//       }
//
//    @objc func logoutTapped() {
//        switchToLoginView()
//    }
//
////    func switchToAccountView() {
////        usernameTextField.isHidden = true
////        passwordTextField.isHidden = true
////        loginButton.isHidden = true
////        welcomeLabel.isHidden = false
////        logoutButton.isHidden = false
////    }
//    func switchToAccountView() {
//        usernameTextField.isHidden = true
//        passwordTextField.isHidden = true
//        loginButton.isHidden = true
//        welcomeLabel.isHidden = false
//        logoutButton.isHidden = false
//    }
//
//
//    func switchToLoginView() {
//        usernameTextField.isHidden = false
//        passwordTextField.isHidden = false
//        loginButton.isHidden = false
//        welcomeLabel.isHidden = true
//        logoutButton.isHidden = true
//    }
//
//    func showGreetingPopup(username: String) {
//        let alert = UIAlertController(title: "Hi \(username)!", message: "Welcome to your account.", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
//            self.switchToAccountView()
//        }))
//        present(alert, animated: true, completion: nil)
//    }
//}
import UIKit

class ViewController: UIViewController {

    // Login UI Elements
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.accessibilityIdentifier = "Username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.accessibilityIdentifier = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.accessibilityIdentifier = "Login"
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // Welcome Screen UI Elements
    let welcomeView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.8)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()

    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Gagana"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Add subviews
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(welcomeView)
        welcomeView.addSubview(welcomeLabel)

        // Set up constraints
        setupConstraints()
    }

    func setupConstraints() {
        // Username TextField Constraints
        NSLayoutConstraint.activate([
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            usernameTextField.widthAnchor.constraint(equalToConstant: 250),
            usernameTextField.heightAnchor.constraint(equalToConstant: 40)
        ])

        // Password TextField Constraints
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalToConstant: 250),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])

        // Login Button Constraints
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])

        // Welcome View Constraints
        NSLayoutConstraint.activate([
            welcomeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            welcomeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            welcomeView.topAnchor.constraint(equalTo: view.topAnchor),
            welcomeView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Welcome Label Constraints
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: welcomeView.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: welcomeView.centerYAnchor)
        ])
    }

    @objc func loginTapped() {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""

        if username == "Gagana" && password == "Ananda" {
            // Handle successful login here
            // Show the welcome message by unhiding the welcomeView
            welcomeView.isHidden = false
            // Hide the login elements
            usernameTextField.isHidden = true
            passwordTextField.isHidden = true
            loginButton.isHidden = true
        } else {
            // Handle incorrect login attempt
            // For example, show an alert
            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}
