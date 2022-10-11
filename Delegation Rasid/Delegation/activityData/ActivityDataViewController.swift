//
//  ActivityDataViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit
protocol ActivityDataDisplayLogic {
    
}
class ActivityDataViewController: UIViewController {

    // MARK: variables
    var interactor: ActivityDataBusinessLogic?
    var router: ActivityDataRoutingLogic?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
extension ActivityDataViewController: ActivityDataDisplayLogic {
    
}
