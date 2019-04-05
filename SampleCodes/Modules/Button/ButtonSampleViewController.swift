//
//  ButtonSampleViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 3/8/2561 BE.
//  Copyright © 2561 Wathin Sonnukij. All rights reserved.
//

import UIKit

class ButtonSampleViewController: BaseViewController {
    
    private var count: Int = 0 {
        didSet {
            labelCount.text = "\(count)"
        }
    }
    @IBOutlet weak var labelCount: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNagivationTitle(title: "Button")
        setupNavigationBackButton()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonIncrementDidClicked(_ sender: Any) {
        count += 1
    }
    
    @IBAction func buttonDecrementDidClicked(_ sender: Any) {
        if count > 0 {
            count = count - 1
        } 
    }
    
    @IBAction func buttonShowAlertDialogDidClicked(_ sender: Any) {
        showAlertDialog(title: "Welcome", message: "Hi there,")
    }
    
    @IBAction func buttonPresentControllerDidClicked(_ sender: Any) {
        present(ResultViewController(), animated: true, completion: nil)
    }
    
    @IBAction func bottonPushControllerDidClicked(_ sender: Any) {
        navigationController?.pushViewController(SecondViewController(), animated: true)
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
