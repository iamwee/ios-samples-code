//
//  PostDetailViewController.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 16/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import UIKit

class PostDetailViewController: BaseViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textViewBody: UITextView!
    
    var post: Post? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNagivationTitle(title: "Post Detail")
        setupNavigationBackButton()
        
        if let post = self.post {
            labelTitle.text = post.title
            textViewBody.text = post.body
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
