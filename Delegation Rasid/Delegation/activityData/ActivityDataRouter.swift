//
//  ActivityDataRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol ActivityDataRoutingLogic {
    
}
class ActivityDataRouter {
    var viewController: ActivityDataViewController?
    init(viewController: ActivityDataViewController) {
        self.viewController = viewController
    }
}
extension ActivityDataRouter: ActivityDataRoutingLogic {
    
}
