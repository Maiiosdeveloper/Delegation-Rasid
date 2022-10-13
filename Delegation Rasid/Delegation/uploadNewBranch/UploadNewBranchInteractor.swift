//
//  UploadNewBranchInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol UploadNewBranchBusinessLogic {
    func validDocumnentNo(documentNo: String)
    func validUserIDNo(userIDNo: String)
    func validExpiryDate(expiryDate: String)
}
class UploadNewBranchInteractor {
    var presenter: UploadNewBranchPresentationLayer?
    init(presenter: UploadNewBranchPresentationLayer) {
        self.presenter = presenter
    }
}
extension UploadNewBranchInteractor: UploadNewBranchBusinessLogic {
    func validExpiryDate(expiryDate: String) {
        presenter?.validExpiryDate(isValid: Validator.validateTextFeild(text: expiryDate))
    }
    
    func validUserIDNo(userIDNo: String) {
        presenter?.validUserIDNo(isValid: Validator.validateTextFeild(text: userIDNo))
    }
    
    func validDocumnentNo(documentNo: String) {
        presenter?.validDocumnentNo(isValid: Validator.validateTextFeild(text: documentNo))
    }
    
    
}
