//
//  DelegatorDataaRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataaRoutingLogic {
    func routeToBankData()
}
class DelegatorDataaRouter {
    var viewController: DelegatorDataViewController?
    init(viewController: DelegatorDataViewController) {
        self.viewController = viewController
    }
    
}
extension DelegatorDataaRouter: DelegatorDataaRoutingLogic {
    func routeToBankData() {
        let view = DelegationConfigurator.bankData()
        viewController?.navigationController?.pushViewController(view, animated: true)
    }
    
    
}
