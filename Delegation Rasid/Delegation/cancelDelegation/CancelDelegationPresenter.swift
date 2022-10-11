//
//  CancelDelegationPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol CancelDelegationPresentationLogic {
    
}
class CancelDelegationPresenter {
    var view: CancelDelegationDisplayLogic?
    init(view: CancelDelegationDisplayLogic) {
        self.view = view
    }
}
extension CancelDelegationPresenter: CancelDelegationPresentationLogic {
    
}
