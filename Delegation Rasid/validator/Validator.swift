
import UIKit
protocol ValidatorProtocol {
    //static func validateTextFeild(textFeild: UITextField, errorLabel: UILabel)
    static func validateTextFeild(text: String) -> Bool
}
class Validator{
    
}
extension Validator: ValidatorProtocol {
//    static func validateTextFeild(textFeild: UITextField, errorLabel: UILabel) {
//        let value = textFeild.text!
//        if value.isEmpty {
//            errorLabel.isHidden = false
//            errorLabel.text = "Required".localized
//
//        }else {
//            errorLabel.isHidden = true
//            errorLabel.text = ""
//
//        }
//    }
    static func validateTextFeild(text: String) -> Bool {
        return text.isEmpty ? false : true
    }
}
