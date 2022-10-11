//
//  UploadNewBranchInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol UploadNewBranchBusinessLogic {
    
}
class UploadNewBranchInteractor {
    var presenter: UploadNewBranchPresentationLayer?
    init(presenter: UploadNewBranchPresentationLayer) {
        self.presenter = presenter
    }
}
extension UploadNewBranchInteractor: UploadNewBranchBusinessLogic {
    
}
