//
//  ViewController.swift
//  KeyboardHandling
//
//  Created by Alfredo Barragan on 1/30/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        registerKeyboardNotifications()
    }
    private func registerKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(willPresentKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    private func unregisterKeyboardNotifications() {
       NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        unregisterKeyboardNotifications()
    }
    
    deinit {
        // clean up views
        // clean up memory
        // can also unregister for notifcation here
    }
    @objc private func willPresentKeyboard(notification: Notification) {
        guard let info = notification.userInfo,
        let keyboardFrame = info["UIKeyboardFrameEndUserInfoKey"] as? CGRect else {
            print("not working")
            return
        }
        containerView.transform = CGAffineTransform(translationX: 0, y: -keyboardFrame.height)
    }
    @objc private func willHideKeyboard(notification: Notification) {
      containerView.transform = CGAffineTransform.identity
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
