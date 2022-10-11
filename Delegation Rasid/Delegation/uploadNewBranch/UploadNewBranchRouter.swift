//
//  UploadNewBranchRouter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol UploadNewBranchRoutingLogic {
    
}
class UploadNewBranchRouter {
    var viewController: UploadNewBranchViewController?
    init(viewController: UploadNewBranchViewController) {
        self.viewController = viewController
    }
}
extension UploadNewBranchRouter: UploadNewBranchRoutingLogic {
    
}
