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

    // MARK: variables
    var interactor: CancelDelegationBusinessLogic?
    var router: CancelDelegationRoutingLogic?
    // MARK: view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        router?.routeToUploadNewBranch()
    }
    

}
extension CancelDelegationViewController: CancelDelegationDisplayLogic {
    
}
