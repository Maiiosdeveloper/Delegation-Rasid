//
//  DelegatorDataInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol DelegatorDataBusinessLogic {
    
}
class DelegatorDataInteractor {
    var presenter: DelegatorDataPresentationLogic?
    init(presenter: DelegatorDataPresentationLogic) {
        self.presenter = presenter
    }
}
extension DelegatorDataInteractor: DelegatorDataBusinessLogic {
    
}
