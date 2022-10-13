//
//  DelegatorDataInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataBusinessLogic {
    func validDelegateName(delegateName: String)
    func validPassportNo(passportNo: String)
    func validPhoneNo(phoneNo: String)
    func validBirthDate(birthDate: String)
}
class DelegatorDataInteractor {
    var presenter: DelegatorDataPresentationLogic?
    init(presenter: DelegatorDataPresentationLogic) {
        self.presenter = presenter
    }
}
extension DelegatorDataInteractor: DelegatorDataBusinessLogic {
    func validBirthDate(birthDate: String) {
        presenter?.validBirthDate(isValid: Validator.validateTextFeild(text: birthDate))
    }
    
    func validPhoneNo(phoneNo: String) {
        presenter?.validPhoneNo(isValid: Validator.validateTextFeild(text: phoneNo))
    }
    
    func validPassportNo(passportNo: String) {
        presenter?.validPassportNo(isValid: Validator.validateTextFeild(text: passportNo))
    }
    
    func validDelegateName(delegateName: String) {
        presenter?.validDelegateName(isValid: Validator.validateTextFeild(text: delegateName))
    }
    
    
}
