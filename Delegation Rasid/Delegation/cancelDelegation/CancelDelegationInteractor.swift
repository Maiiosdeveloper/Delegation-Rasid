//
//  CancelDelegationInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol CancelDelegationBusinessLogic {
    
}
class CancelDelegationInteractor {
    var presenter: CancelDelegationPresentationLogic?
    init(presenter: CancelDelegationPresentationLogic) {
        self.presenter = presenter
    }
}
extension CancelDelegationInteractor: CancelDelegationBusinessLogic {
    
}
