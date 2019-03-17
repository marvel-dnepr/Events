//
//  ViewController.swift
//  myEvent
//
//  Created by Andrey on 17.03.2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import UIKit

protocol AddEventViewControllerDelegate {
    func addEventViewController(_ addEventViewController: AddEventViewController, didAddEvent event: Event)
}

class AddEventViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        let newBirthday = Event(firstName: firstName, lastName: lastName, birthdate: birthdate)
        delegate?.addEventViewController(self, didAddEvent: newBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    var delegate: AddEventViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
    }


}

