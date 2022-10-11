//
//  CancelDelegationRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol CancelDelegationRoutingLogic {
    
}
class CancelDelegationRouter {
    var viewController: CancelDelegationViewController?
    init(viewController: CancelDelegationViewController) {
        self.viewController = viewController
    }
}
extension CancelDelegationRouter: CancelDelegationRoutingLogic {
    
}
