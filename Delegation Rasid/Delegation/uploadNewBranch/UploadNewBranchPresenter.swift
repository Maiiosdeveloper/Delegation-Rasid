//
//  UploadNewBranchPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol UploadNewBranchPresentationLayer {
    
}
class UploadNewBranchPresenter {
    var view: UploadNewBranchDisplayLogic?
    init(view: UploadNewBranchDisplayLogic) {
        self.view = view
    }
}
extension UploadNewBranchPresenter: UploadNewBranchPresentationLayer {
    
}
