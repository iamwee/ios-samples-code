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
        setupNavigationBar()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupNavigationBar() {
        // Do something with navigation
    }
    
    func setNagivationTitle(title: String) {
        self.navigationItem.title = title
    }
    
    func setupBackNavigationButton() {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}