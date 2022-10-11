//
//  ActivityDataPresenter.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import Foundation
protocol ActivityDataPresentation {
    
}
class ActivityDataPresenter {
    var view: ActivityDataDisplayLogic?
    init(view: ActivityDataDisplayLogic) {
        self.view = view
    }
}
extension ActivityDataPresenter: ActivityDataPresentation {
    
}
