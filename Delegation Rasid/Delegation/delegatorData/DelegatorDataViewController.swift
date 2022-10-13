//
//  DelegatorDataViewController.swift
//  Delegation Rasid
//
//  Created by fintech on 11/10/2022.
//

import UIKit
protocol DelegatorDataDisplayLogic {
    func displayDelegateNameResult(isValid: Bool)
    func displayPassportNoResult(isValid: Bool)
    func displayPhoneNoResult(isValid: Bool)
    func displayBirthDateResult(isValid: Bool)
}
class DelegatorDataViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var delegatorNameTextFeild: UITextField!
    @IBOutlet weak var delegatorNameErrorLabel: UILabel!
    @IBOutlet weak var passportNoTextFeild: UITextField!
    @IBOutlet weak var passportNoErrorLabel: UILabel!
    @IBOutlet weak var phoneNoTextFeild: UITextField!
    @IBOutlet weak var phoneNoErrorLabel: UILabel!
    @IBOutlet weak var birthDateTextFeild: UITextField!
    @IBOutlet weak var birthDateErrorLabel: UILabel!
    
    //MARK: - variables
    var interactor: DelegatorDataBusinessLogic?
    var router: DelegatorDataaRoutingLogic?
    private var datePicker: DatePicker?
    
    //MARK: - view life cycle
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
        datePicker?.showDatePicker(txtDatePicker: birthDateTextFeild)
    }
    func isValidateForm() -> Bool{
        
        let errorLabels = [passportNoErrorLabel, phoneNoErrorLabel, birthDateErrorLabel]
        for errorLabel in errorLabels {
            if !(errorLabel?.isHidden ?? false) {
                return false
            }
        }
        return true
    }

    // MARK: - IBActions
    @IBAction func nextAction(_ sender: Any) {
        if isValidateForm() {
            router?.routeToBankData()
        }
    }
    
    @IBAction func delegateNameChangedAction(_ sender: Any) {
        //Validator.validateTextFeild(textFeild: delegatorNameTextFeild, errorLabel: delegatorNameErrorLabel)
        interactor?.validDelegateName(delegateName: delegatorNameTextFeild.text!)
    }
    @IBAction func passportNoChangedAction(_ sender: Any) {
        //Validator.validateTextFeild(textFeild: passportNoTextFeild, errorLabel: passportNoErrorLabel)
        interactor?.validPassportNo(passportNo: passportNoTextFeild.text!)
    }
    @IBAction func phoneNoChangedAction(_ sender: Any) {
        //Validator.validateTextFeild(textFeild: phoneNoTextFeild, errorLabel: phoneNoErrorLabel)
        interactor?.validPhoneNo(phoneNo: phoneNoTextFeild.text!)
    }
    @IBAction func birthDateChangedAction(_ sender: Any) {
        //Validator.validateTextFeild(textFeild: birthDateTextFeild, errorLabel: birthDateErrorLabel)
        interactor?.validBirthDate(birthDate: birthDateTextFeild.text!)
    }
}
extension DelegatorDataViewController: DelegatorDataDisplayLogic {
    func displayBirthDateResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: birthDateErrorLabel)
    }
    func displayPhoneNoResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: phoneNoErrorLabel)
    }
    func displayPassportNoResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: passportNoErrorLabel)
    }
    func displayDelegateNameResult(isValid: Bool) {
        displayErrorMessagesLabelOrNot(isValid: isValid, errorMessage: "Required".localized, errorLabel: delegatorNameErrorLabel)
    }
    
    
}
extension DelegatorDataViewController: DatePickerDelegate {
    func getDate(_ datePicker: DatePicker, date: String) {
        birthDateTextFeild.text = date
        self.view.endEditing(true)
        //Validator.validateTextFeild(textFeild: birthDateTextFeild, errorLabel: birthDateErrorLabel)
        interactor?.validBirthDate(birthDate: birthDateTextFeild.text!)
    }
    func cancel(_ datePicker: DatePicker) {
        self.view.endEditing(true)
        //Validator.validateTextFeild(textFeild: birthDateTextFeild, errorLabel: birthDateErrorLabel)
        interactor?.validBirthDate(birthDate: birthDateTextFeild.text!)
    }
    
}
