//
//  MainViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 2/8/2561 BE.
//  Copyright © 2561 Wathin Sonnukij. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    
    private var menus: [String] = []
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: MenuTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: MenuTableViewCell.identifier)
            tableView.dataSource = self
            tableView.delegate = self
            tableView.tableFooterView = UIView(frame: .zero)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initMenuData()
        setupNagivationTitle(title: "Sample Code")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initMenuData() {
        menus.append("Auto Layout")
        menus.append("StackView")
        menus.append("Label")
        menus.append("Button")
        menus.append("TextField")
        menus.append("Collection View")
    }
    
}

extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.identifier) as! MenuTableViewCell
        let menu = menus[indexPath.row]
        cell.title?.text = menu
        return cell 
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: self.navigationController?.pushViewController(ViewSampleController(), animated: true); break
        case 1: self.navigationController?.pushViewController(StackViewSampleController(), animated: true); break
        case 2: self.navigationController?.pushViewController(LabelSampleViewController(), animated: true); break
        case 3: self.navigationController?.pushViewController(ButtonSampleViewController(), animated: true); break
        case 4: self.navigationController?.pushViewController(TextFieldSampleViewController(), animated: true); break
        default: break
        }
    }
}
