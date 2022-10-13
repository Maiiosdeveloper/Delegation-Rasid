//
//  LocalizeHelper.swift
//  RasidBack
//
//  Created by Ahmad Yasser on 25/07/2022.
//

import UIKit.UITextField
private let appleLanguageKey = "AppleLanguages"
enum LanguageType: String, CaseIterable {
    case arabic
    case english
    var lang: String {
        switch self {
        case .arabic:
            return "ar"
        case .english:
            return "en"
        }
        
    }
}
enum LocalizeHelper {
    /// get current Apple language
    static func currentAppleLanguageString() -> String {
        let userdef = UserDefaults.standard
        guard let langArray = userdef.array(forKey: appleLanguageKey) as? [String] else { return "" }
        guard let current = langArray.first else { return "" }
        let currentWithoutLocale = current.prefix(count: 2)
        return currentWithoutLocale
    }
    static func currentAppleLanguage() -> LanguageType {
        return currentAppleLanguageString() == "en" ? .english : .arabic
    }
    /// set @lang to be the first in Applelanguages list
    static func setAppleLanguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang, currentAppleLanguageString()], forKey: appleLanguageKey)
        userdef.synchronize()
        LocalizationHandler.doTheExchange()
    }
    static var isRTL: Bool {
        return LocalizeHelper.currentAppleLanguage() == .arabic
    }
}
enum LocalizationHandler {
    static func doTheExchange() {
        exchangeMethodsForClass(
            className: Bundle.self,
            originalSelector: #selector(Bundle.localizedString(forKey:value:table:)),
            overrideSelector: #selector(Bundle.customLocalizedString(forKey:value:table:)))
    }
}
extension Bundle {
    @objc func customLocalizedString(forKey key: String, value: String?, table tableName: String?) -> String {
        let currentLanguage = LocalizeHelper.currentAppleLanguage().lang
        var bundle = Bundle.main
        if let path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj") {
            bundle = Bundle(path: path) ?? .main
        } else {
            if let path = Bundle.main.path(forResource: "Base", ofType: "lproj") {
                bundle = Bundle(path: path) ?? .main
            }
        }
        return bundle.customLocalizedString(forKey: key, value: value, table: tableName)
    }
}
func exchangeMethodsForClass(className: AnyClass, originalSelector: Selector, overrideSelector: Selector) {
    guard let originalMethod = class_getInstanceMethod(className, originalSelector) else { return }
    guard let overrideMethod = class_getInstanceMethod(className, overrideSelector) else { return }
    if class_addMethod(
        className,
        originalSelector,
        method_getImplementation(overrideMethod),
        method_getTypeEncoding(overrideMethod)) {
        class_replaceMethod(
            className,
            overrideSelector,
            method_getImplementation(originalMethod),
            method_getTypeEncoding(originalMethod))
    } else {
        method_exchangeImplementations(originalMethod, overrideMethod)
    }
}
extension UITextField {
    open override func awakeFromNib() {
        super.awakeFromNib()
        if LocalizeHelper.currentAppleLanguage() == .arabic {
            if textAlignment == .natural {
                self.textAlignment = .right
            }
        } else {
            if textAlignment == .right {
                self.textAlignment = .natural
            }
            if textAlignment == .natural {
                self.textAlignment = .left
            }
        }
    }
}
extension UITextView {
    open override func awakeFromNib() {
        super.awakeFromNib()
        if LocalizeHelper.currentAppleLanguage() == .arabic {
            if textAlignment == .natural {
                self.textAlignment = .right
            }
        } else {
            if textAlignment == .right {
                self.textAlignment = .natural
            }
            if textAlignment == .natural {
                self.textAlignment = .left
            }
        }
    }
}
extension UIViewController {
    open override class func awakeFromNib() {
        super.awakeFromNib()
//        self.navigationController?.navigationBar.backItem?.backButtonTitle = "Back".localized
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
}
