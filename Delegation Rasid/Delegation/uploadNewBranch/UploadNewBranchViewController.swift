//
//  UploadNewBranchViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit

protocol UploadNewBranchDisplayLogic {
    func displayDocumentNoResult(isValid: Bool)
    func displayUserIDNoResult(isValid: Bool)
    func displayExpiryDateResult(isValid: Bool)
}
class UploadNewBranchViewController: UIViewController {
    
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var documentNoTextFeild: UITextField!
    @IBOutlet weak var documentNoErrorLabel: UILabel!
    @IBOutlet weak var userIDTextFeild: UITextField!
    @IBOutlet weak var userIDErrorLabel: UILabel!
    @IBOutlet weak var expiryDateTextFeild: UITextField!
    @IBOutlet weak var expiryDateErrorLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    // MARK: variables
    var interactor: UploadNewBranchBusinessLogic?
    var router: UploadNewBranchRoutingLogic?
    private var datePicker: DatePicker?
    
    // MARK: view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDataPicker()
        
    }
    override func viewWillAppear(_ animated: Bool) {
      if let nav = self.navigationController {
         nav.isToolbarHidden = false
      }
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let nav = self.navigationController {
           nav.isToolbarHidden = true
        }
    }
    
    func configureDataPicker() {
        datePicker = DatePicker()
        datePicker?.delegate = self
        datePicker?.showDatePicker(txtDatePicker:expiryDateTextFeild)
    }
    func isValidateForm() -> Bool{
        
        let errorLabels = [documentNoErrorLabel, userIDErrorLabel, expiryDateErrorLabel]
        for errorLabel in errorLabels {
            if !(errorLabel?.isHidden ?? false) {
                return false
            }
        }
        return true
    }
    
    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        if isValidateForm(){
            router?.routeToDelegatorData()
        }
        
    }
    @IBAction func documentNoChangedAction(_ sender: Any) {
        interactor?.validDocumnentNo(documentNo: documentNoTextFeild.text!)
    }
    @IBAction func userIDChangedAction(_ sender: Any) {
        interactor?.validUserIDNo(userIDNo: userIDTextFeild.text!)
    }
    
    @IBAction func expiryDateChanged(_ sender: Any) {
        interactor?.validExpiryDate(expiryDate: expiryDateTextFeild.text!)
        
    }
    
}
extension UploadNewBranchViewController: UploadNewBranchDisplayLogic {
    func displayExpiryDateResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: expiryDateErrorLabel)
    }
    
    func displayUserIDNoResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: userIDErrorLabel)
    }
    
    func displayDocumentNoResult(isValid: Bool)  {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: documentNoErrorLabel)
    }
    
    
    
}
extension UploadNewBranchViewController: DatePickerDelegate {
    func getDate(_ datePicker: DatePicker, date: String) {
        expiryDateTextFeild.text = date
        self.view.endEditing(true)
        interactor?.validExpiryDate(expiryDate: expiryDateTextFeild.text!)
    }
    func cancel(_ datePicker: DatePicker) {
        self.view.endEditing(true)
        interactor?.validExpiryDate(expiryDate: expiryDateTextFeild.text!)
    }
    
}

