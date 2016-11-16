//
//  HTTPGetIt.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 11/15/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import Foundation

class HTTPGetIt  {
    var http: HTTPActions!
    
    init(http: HTTPActions){
        self.http = http
    }
    
    func GetMeGoogle(handler: (String?) -> ()){
        http.GetRequest("https://www.google.com", handler: handler)
    }
}
