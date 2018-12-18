//
//  BaseViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 2/8/2561 BE.
//  Copyright © 2561 Wathin Sonnukij. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupNagivationTitle(title: String) {
        self.navigationItem.title = title
    }
    
    func setupNavigationBackButton() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "arrow_back"),
            style: UIBarButtonItemStyle.plain,
            target: self,
            action: #selector(popNavigation)
        )
    }
    
    @objc private func popNavigation() {
        self.navigationController?.popViewController(animated: true)
    }

}
