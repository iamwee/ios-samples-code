//
//  Post.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 3/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import UIKit

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
