//
//  HTTPWrapper.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 11/15/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import Foundation
import Alamofire

protocol HTTPActions {
    func GetRequest(url: String, handler: (String?) -> ()) -> Void
}

class HTTPWrapper: HTTPActions {
    func GetRequest(url: String, handler: (String?) -> ()) -> Void {
        Alamofire.request(.GET, url)
        .responseString{response in
                handler(response.result.value)}
    }
}
