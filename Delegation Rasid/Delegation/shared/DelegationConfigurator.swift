//
//  DelegationConfigurator.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
class DelegationConfigurator {
    static func cancelDelegate() -> CancelDelegationViewController{
        let view = CancelDelegationViewController()
        let presenter = CancelDelegationPresenter(view: view)
        let interactor = CancelDelegationInteractor(presenter: presenter)
        let router = CancelDelegationRouter(viewController: view)
        view.interactor = interactor
        view.router = router
        return view
    }
    static func uploadNewBranch() -> UploadNewBranchViewController{
        let view = UploadNewBranchViewController()
        let presenter = UploadNewBranchPresenter(view: view)
        let interactor = UploadNewBranchInteractor(presenter: presenter)
        let router = UploadNewBranchRouter(viewController: view)
        view.interactor = interactor
        view.router = router
        return view
    }
}
