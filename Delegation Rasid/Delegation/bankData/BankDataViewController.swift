//
//  BankDataViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit
protocol BankDataDisplayLogic {
    
}
class BankDataViewController: UIViewController {

    //MARK: - variables
    var interactor: BankDataBusinessLogic?
    var router: BankDataRoutingLogic?
    
    //MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        router?.routeToActivityData()
    }

}
extension BankDataViewController: BankDataDisplayLogic {
    
}
