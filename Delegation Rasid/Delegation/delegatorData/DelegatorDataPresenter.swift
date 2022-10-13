//
//  DelegatorDataPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataPresentationLogic {
    func validDelegateName(isValid: Bool)
    func validPassportNo(isValid: Bool)
    func validPhoneNo(isValid: Bool)
    func validBirthDate(isValid: Bool)
}
class DelegatorDataPresenter {
    var view: DelegatorDataDisplayLogic?
    init(view: DelegatorDataDisplayLogic) {
        self.view = view
    }
}
extension DelegatorDataPresenter: DelegatorDataPresentationLogic {
    func validBirthDate(isValid: Bool) {
        view?.displayBirthDateResult(isValid: isValid)
    }
    func validPhoneNo(isValid: Bool) {
        view?.displayPhoneNoResult(isValid: isValid)
    }
    func validPassportNo(isValid: Bool) {
        view?.displayPassportNoResult(isValid: isValid)
    }
    func validDelegateName(isValid: Bool) {
        view?.displayDelegateNameResult(isValid: isValid)
    }
}
