//
//  NetworkingViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 3/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import UIKit
import Alamofire

class NetworkingViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: PostTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: PostTableViewCell.identifier)
            tableView.dataSource = self
            tableView.delegate = self
            tableView.tableFooterView = UIView(frame: .zero)
        }
    }

    var posts: [Post] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNagivationTitle(title: "Networking")
        setupNavigationBackButton()
        
        loadData()
        // Do any additional setup after loading the view.
    }
    
    private func loadData() {
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseData { response in
            let result: Result<[Post]> = JSONDecoder().decodeResponse(from: response)
            result.withValue { data in
                self.posts = data
                self.tableView.reloadData()
            }
            
            result.withError { error in
                self.showAlertDialog(title: nil, message: "There was a something occured, please try again later")
            }
            
        }
    }

}

extension NetworkingViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier) as! PostTableViewCell
        let item = posts[indexPath.row]
        cell.labelTitle.text = item.title
        cell.labelBody.text = item.body
        return cell
    }

}

extension NetworkingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = PostDetailViewController()
        viewController.post = posts[indexPath.row]
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
