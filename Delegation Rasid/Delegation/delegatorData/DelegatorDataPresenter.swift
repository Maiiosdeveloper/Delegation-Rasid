//
//  DelegatorDataPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataPresentationLogic {
    
}
class DelegatorDataPresenter {
    var view: DelegatorDataDisplayLogic?
    init(view: DelegatorDataDisplayLogic) {
        self.view = view
    }
}
extension DelegatorDataPresenter: DelegatorDataPresentationLogic {
    
}
