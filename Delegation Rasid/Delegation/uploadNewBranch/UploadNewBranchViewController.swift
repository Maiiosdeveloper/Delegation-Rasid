//
//  UploadNewBranchViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit
protocol UploadNewBranchDisplayLogic {
    
}
class UploadNewBranchViewController: UIViewController {

    // MARK: variables
    var interactor: UploadNewBranchBusinessLogic?
    var router: UploadNewBranchRoutingLogic?
    // MARK: view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        router?.routeToDelegatorData()
    }

}
extension UploadNewBranchViewController: UploadNewBranchDisplayLogic {
    
}
