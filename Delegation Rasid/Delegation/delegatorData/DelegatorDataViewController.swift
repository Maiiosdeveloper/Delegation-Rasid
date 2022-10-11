//
//  DelegatorDataViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit
protocol DelegatorDataDisplayLogic {
    
}
class DelegatorDataViewController: UIViewController {

    //MARK: - variables
    var interactor: DelegatorDataBusinessLogic?
    var router: DelegatorDataaRoutingLogic?
    //MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    

}
extension DelegatorDataViewController: DelegatorDataDisplayLogic {
    
}
