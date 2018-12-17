//
//  TextFieldSampleViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 17/12/18.
//  Copyright © 2018 Wathin Sonnukij. All rights reserved.
//

import UIKit

class TextFieldSampleViewController: BaseViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNagivationTitle(title: "TextField")

    }
    @IBAction func messageTextFieldDidChange(_ sender: UITextField) {
        messageLabel.text = sender.text ?? ""
    }
    
    @IBAction func submitDidClicked(_ sender: Any) {
        if nameTextField.text?.isEmpty == true {
            showAlertDialog(title: nil, message: "กรุณากรอกชื่อ")
        } else {
            let name = nameTextField.text ?? ""
            let vc = WelcomeTextFieldViewController()
            vc.name = name
            present(vc, animated: true, completion: nil)
            
            nameTextField.text = ""
        }
    }
    
}
