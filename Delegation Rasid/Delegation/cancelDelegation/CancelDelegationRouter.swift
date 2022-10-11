//
//  CancelDelegationRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol CancelDelegationRoutingLogic {
    func routeToUploadNewBranch()
}
class CancelDelegationRouter {
    var viewController: CancelDelegationViewController?
    init(viewController: CancelDelegationViewController) {
        self.viewController = viewController
    }
}
extension CancelDelegationRouter: CancelDelegationRoutingLogic {
    func routeToUploadNewBranch() {
        let view = DelegationConfigurator.uploadNewBranch()
        viewController?.navigationController?.pushViewController(view, animated: true)
    }
    
    
}
