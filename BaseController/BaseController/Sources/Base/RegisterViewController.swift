//
//  RegisterViewController.swift
//  BaseController
//
//  Created by tran.quoc.quan on 4/24/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import UserController

open class RegisterViewController: UIViewController, UITextFieldDelegate {
    var isEnableErrFirstname = false
    var isEnableErrLastname = false
    
    lazy var firstnameTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "First name"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        return tf
    }()
    
    var firstnameErrLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Please input first name!"
        label.textColor = .red
        label.textAlignment = .left
        label.backgroundColor = UIColor.RGB(red: 230, green: 230, blue: 230)
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    
    lazy var lastnameTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Last name"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        return tf
    }()
    
    var lastnameErrLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Please input last name!"
        label.textColor = .red
        label.textAlignment = .left
        label.backgroundColor = UIColor.RGB(red: 230, green: 230, blue: 230)
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    
    lazy var emailTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Email address"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    lazy var passwordTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var confirmPasswordTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Confirm password"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var phoneTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Phone"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        tf.keyboardType = .phonePad
        return tf
    }()
    
    lazy var addressTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Address"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        return tf
    }()
    
    var addressButton: UIButton = {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle("Input address", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.RGB(red: 68.0, green: 120.0, blue: 206.0)
        
        return button
    }()
    
    lazy var birthdayTextField: LeftPaddedtextField = {
        let tf = LeftPaddedtextField(frame: .zero)
        tf.placeholder = "Birthday"
        tf.backgroundColor = UIColor.RGB(red: 219.0, green: 218.0, blue: 220.0)
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 0.5
        tf.layer.cornerRadius = 5.0
        tf.font = UIFont.systemFont(ofSize: 15.0)
        tf.delegate = self as UITextFieldDelegate
        return tf
    }()
    
    
    var registerButton: UIButton = {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.RGB(red: 68.0, green: 120.0, blue: 206.0)
        button.addTarget(self, action: #selector(registerAccountOnTouch), for: .touchUpInside)
        return button
    }()
    

    override open func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstnameTextField)
        view.addSubview(firstnameErrLabel)
        view.addSubview(lastnameTextField)
        view.addSubview(lastnameErrLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(confirmPasswordTextField)
        view.addSubview(phoneTextField)
//        view.addSubview(addressButton)
        view.addSubview(addressTextField)
        view.addSubview(birthdayTextField)
        
        view.addSubview(registerButton)
        
        configurationLayoutView()
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func configurationLayoutView() {
        
        let navigationBarHeight: CGFloat = 70
        
        firstnameTextField.anchorWithConstantsToTop(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: navigationBarHeight, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        isEnableErrFirstname = true
        if isEnableErrFirstname {
            firstnameErrLabel.anchorWithConstantsToTop(firstnameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        } else {
            firstnameErrLabel.anchorWithConstantsToTop(firstnameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        }
        
        lastnameTextField.anchorWithConstantsToTop(firstnameErrLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        isEnableErrLastname = true
        if isEnableErrLastname {
            lastnameErrLabel.anchorWithConstantsToTop(lastnameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        } else {
            lastnameErrLabel.anchorWithConstantsToTop(lastnameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        }
        
        birthdayTextField.anchorWithConstantsToTop(lastnameErrLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        emailTextField.anchorWithConstantsToTop(birthdayTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        passwordTextField.anchorWithConstantsToTop(emailTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        confirmPasswordTextField.anchorWithConstantsToTop(passwordTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        phoneTextField.anchorWithConstantsToTop(confirmPasswordTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        //        addressButton.anchorWithConstantsToTop(phoneTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        addressTextField.anchorWithConstantsToTop(phoneTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
        
        registerButton.anchorWithConstantsToTop(addressTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 5, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 35)
    }
    
    func registerAccountOnTouch(sender : UIButton) {
        
        if !checkIsValidEmail(email: emailTextField.text) {
            return
        }
        
        BaseUserServices.sharedInstance.validateAccount(email: "quantq777@gmail.com") { (isSuccessful, isValid, msgError) in
            if isSuccessful {
                if !isValid {
                    print("user is not valid!!!")
                    let parameter = NSMutableDictionary()
                    parameter.setObject("quantq777@gmail.com", forKey: "email" as NSCopying)
                    parameter.setObject("Tran", forKey: "firstName" as NSCopying)
                    parameter.setObject("Quoc Quan", forKey: "lastName" as NSCopying)
                    parameter.setObject("0982789809", forKey: "phone" as NSCopying)
                    parameter.setObject("123456".md5(), forKey: "password" as NSCopying)
                    parameter.setObject("04/05/1987", forKey: "birthday" as NSCopying)
                    parameter.setObject("0", forKey: "areald" as NSCopying)
                    
//                    BaseUserServices.sharedInstance.registerAccount(parameter: parameter, completion: { (isSuccessful, isCreate, msgError) in
//                        
//                    })
                } else {
                    print("user is valid!!!")
                }
            } else {
                print("Error:\n:\(msgError)")
            }
        }

    }
    
    func checkIsValidEmail(email: String?) -> Bool {
        
        guard email == nil else {
            return false
        }
        
        return true
    }
    
    
}

open class LeftPaddedtextField: UITextField {
    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 8, y: bounds.origin.y, width: bounds.width + 8, height: bounds.height)
    }
    
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 8, y: bounds.origin.y, width: bounds.width + 8, height: bounds.height)
    }
}

extension String {
    func md5() -> String! {
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLength = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLength)
        
        CC_MD5(str!, strLen, result)
        
        let hash = NSMutableString()
        
        for i in 0..<digestLength {
            hash.appendFormat("%02x", result[i])
        }
        
        result.deinitialize()
        
        return String(format: hash as String)
    }
}


extension UIViewController{
    func isModal() -> Bool {
        
        if let navigationController = self.navigationController{
            if navigationController.viewControllers.first != self {
                return false
            }
        }
        
        if self.presentingViewController != nil {
            return true
        }
        
        if self.navigationController?.presentingViewController?.presentedViewController == self.navigationController  {
            return true
        }
        
        if self.tabBarController?.presentingViewController is UITabBarController {
            return true
        }
        
        return false
    }
}

extension UIColor {
    static func RGB(red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
}

extension UIView {
    
    func anchorToTop (_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
        anchorWithConstantsToTop(top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    func anchorWithConstantsToTop(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) {
        _ = anchor(top: top, left: left, bottom: bottom, right: right, topConstant: topConstant, leftConstant: leftConstant, bottomConstant: bottomConstant, rightConstant: rightConstant, widthConstant: widthConstant, heightConstant: heightConstant)
    }
    
    func anchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> [NSLayoutConstraint]? {
        var anchors = [NSLayoutConstraint]()
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: topConstant))
        }
        
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstant))
        }
        
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant))
        }
        
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: -rightConstant))
        }
        
        if widthConstant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstant))
        }
        
        if heightConstant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
        
    }
}
