//
//  BankDataRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol BankDataRoutingLogic {
    
}
class BankDataRouter {
    var viewController: BankDataViewController?
    init(viewController: BankDataViewController) {
        self.viewController = viewController
    }
}
extension BankDataRouter: BankDataRoutingLogic {
    
}
