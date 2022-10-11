//
//  DelegatorDataaRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataaRoutingLogic {
    
}
class DelegatorDataaRouter {
    var viewController: DelegatorDataViewController?
    init(viewController: DelegatorDataViewController) {
        self.viewController = viewController
    }
    
}
extension DelegatorDataaRouter: DelegatorDataaRoutingLogic {
    
}
