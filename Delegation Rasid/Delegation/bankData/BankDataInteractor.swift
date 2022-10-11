//
//  BankDataInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol BankDataBusinessLogic {
    
}
class BankDataInteractor {
    var presenter: BankDataPresentationLogic?
    init(presenter: BankDataPresentationLogic) {
        self.presenter = presenter
    }
}
extension BankDataInteractor: BankDataBusinessLogic {
    
}
