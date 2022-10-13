//
//  UploadNewBranchPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol UploadNewBranchPresentationLayer {
    func validDocumnentNo(isValid: Bool)
    func validUserIDNo(isValid: Bool)
    func validExpiryDate(isValid: Bool)
}
class UploadNewBranchPresenter {
    var view: UploadNewBranchDisplayLogic?
    init(view: UploadNewBranchDisplayLogic) {
        self.view = view
    }
}
extension UploadNewBranchPresenter: UploadNewBranchPresentationLayer {
    func validExpiryDate(isValid: Bool) {
        view?.displayExpiryDateResult(isValid: isValid)
    }
    
    func validUserIDNo(isValid: Bool) {
        view?.displayUserIDNoResult(isValid: isValid)
    }
    
    func validDocumnentNo(isValid: Bool) {
        view?.displayDocumentNoResult(isValid: isValid)
    }
    
    
}
