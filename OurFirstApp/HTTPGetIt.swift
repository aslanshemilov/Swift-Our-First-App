//
//  HTTPGetIt.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 11/15/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import Foundation
import Alamofire

class HTTPGetIt  {
    func GetMeGoogle(handler: (String?) -> ()){
        Alamofire.request(.GET, "https://www.google.com")
        .responseString{response in
            handler(response.result.value)
        }
    }
}
