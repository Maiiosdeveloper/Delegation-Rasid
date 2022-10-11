//
//  BankDataPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol BankDataPresentationLogic {
    
}
class BankDataPresenter {
    var view: BankDataDisplayLogic?
    init(view: BankDataDisplayLogic) {
        self.view = view
    }
}
extension BankDataPresenter: BankDataPresentationLogic {
    
}
