//
//  CancelDelegationViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit

protocol CancelDelegationDisplayLogic {
    
}
class CancelDelegationViewController: UIViewController {

    @IBOutlet weak var languageButton: UIButton!
    // MARK: variables
    var interactor: CancelDelegationBusinessLogic?
    var router: CancelDelegationRoutingLogic?
    // MARK: view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
        languageButton.setTitle("Button Language".localized, for: .normal)
    }

    

    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        router?.routeToUploadNewBranch()
    }
    @IBAction func changeLanguageAction(_ sender: Any) {
        let isRTL = LocalizeHelper.isRTL
        // Switching to Arabic
        if !isRTL {
            LocalizeHelper.setAppleLanguageTo(lang: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
            view.window?.rootViewController = UINavigationController(rootViewController: DelegationConfigurator.cancelDelegate())
        }
        // Switching to English
        if isRTL {
            LocalizeHelper.setAppleLanguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
            view.window?.rootViewController = UINavigationController(rootViewController: DelegationConfigurator.cancelDelegate())
        }
    }
    
}
extension CancelDelegationViewController: CancelDelegationDisplayLogic {
    
}
