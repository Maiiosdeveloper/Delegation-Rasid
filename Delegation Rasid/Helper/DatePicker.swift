//
//  DatePicker.swift
//  Delegation Rasid
//
//  Created by fintech on 12/10/2022.
//

import Foundation
import UIKit

import UIKit

protocol DatePickerDelegate: AnyObject {
    func getDate(_ datePicker:DatePicker, date:String)
    func cancel(_ datePicker:DatePicker)
}

class DatePicker: UIView {
    
    private let datePicker = UIDatePicker()
    //private var dateFormate = "yyyy/mm/dd"
    private var dateFormate = "MM/dd/yyyy"
    weak var delegate:DatePickerDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // self.frame = UIScreen.main.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showDatePicker(txtDatePicker:UITextField){
        //Formate Date
        datePicker.datePickerMode = .date
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done".localized, style: .plain, target: self, action:       #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem:       UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel".localized, style: .plain, target: self, action:       #selector(cancelDatePicker));
        
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated:       false)
        
        txtDatePicker.inputAccessoryView = toolbar
        txtDatePicker.inputView = datePicker
        
    }
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormate
        let result = formatter.string(from: datePicker.date)
        self.delegate?.getDate(self, date: result)
        
    }
    
    @objc func cancelDatePicker(){
        self.delegate?.cancel(self)
    }
    
}

