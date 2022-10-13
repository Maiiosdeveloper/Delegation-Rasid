//
//  ViewControllerExtension.swift
//  Delegation Rasid
//
//  Created by fintech on 13/10/2022.
//

import Foundation
import UIKit
extension UIViewController {
    //helper method to show or hide error label depends on valid or not valid text feild
    
    func displayErrorMessagesLabelOrNot(isValid:Bool, errorMessage: String?, errorLabel: UILabel) {
        if isValid {
            errorLabel.isHidden = true
        }else {
            errorLabel.isHidden = false
            if let errorMessage {
                errorLabel.text = errorMessage
            }
        }
    }
}
