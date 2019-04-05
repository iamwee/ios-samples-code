//
//  JsonDecoderExtension.swift
//  SampleCodes
//
//  Created by Wathin Sonnukij on 4/1/19.
//  Copyright © 2019 Wathin Sonnukij. All rights reserved.
//

import Foundation
import Alamofire


extension JSONDecoder {
    
    func decodeResponse<T: Decodable>(from response: DataResponse<Data>) -> Result<T> {
        debugPrint("Request : \(String(describing: response.request))"  )
        debugPrint("Response : \(String(describing: response.response))")
        debugPrint("Result : \(response.result)")
        
        guard response.error == nil else {
            print(response.error!)
            return .failure(response.error!)
        }
        
        guard let responseData = response.data else {
            print("didn't get any data from API")
            return .failure(BackendError.parsing(reason:
                "Did not get data in response"))
        }
        
        do {
            let item = try decode(T.self, from: responseData)
            return .success(item)
        } catch {
            print("error trying to decode response")
            print(error)
            return .failure(error)
        }
    }
    
}
