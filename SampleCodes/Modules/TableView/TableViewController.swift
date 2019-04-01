//
//  TableViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 17/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import UIKit

class TableViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: MenuTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: MenuTableViewCell.identifier)
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView(frame: .zero)
        }
    }
    
    private let menus: [String] = ["Single View Type", "Multiple View Type"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNagivationTitle(title: "TableView Sample")
        setupNavigationBackButton()

        // Do any additional setup after loading the view.
    }

}



extension TableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.identifier) as! MenuTableViewCell
        let menu = menus[indexPath.row]
        cell.title.text = menu
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
}
