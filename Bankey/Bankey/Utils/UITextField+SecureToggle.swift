//
//  UITextField+SecureToggle.swift
//  Bankey
//
//  Created by Soeur Zhang on 17/04/22.
//

import Foundation
import UIKit

let passwordToggleButton = UIButton(type: .custom)
extension UITextField {
    func enablePasswordToggle() {
        passwordToggleButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordToggleButton.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        passwordToggleButton.addTarget(self, action: #selector(togglePasswordView), for: .touchUpInside)
        rightView = passwordToggleButton
        rightViewMode = .always
    }
    
    @objc func togglePasswordView(_ sender: Any) {
           isSecureTextEntry.toggle()
           passwordToggleButton.isSelected.toggle()
       }
}