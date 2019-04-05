//
//  BackendError.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 4/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import Foundation

enum BackendError: Error {
    case urlError(reason: String)
    case parsing(reason: String)
}
