//
//  ActivityDataInteractor.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol ActivityDataBusinessLogic {
    
}
class ActivityDataInteractor {
    var presenter: ActivityDataPresentation?
    init(presenter: ActivityDataPresentation) {
        self.presenter = presenter
    }
}
extension ActivityDataInteractor: ActivityDataBusinessLogic {
    
}
