//
//  WelcomeTextFieldViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 17/12/18.
//  Copyright © 2018 Wathin Sonnukij. All rights reserved.
//

import UIKit

class WelcomeTextFieldViewController: BaseViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = "สวัสดี \(name)"
    }

    @IBAction func closeButtonDidClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
