//
//  HTTPMock.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 11/15/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import Foundation
@testable import OurFirstApp

class HTTPMock: HTTPActions {
    var httpReturn: String?
    
    func GetRequest(url: String, handler: (String?) -> ()) -> Void {
        handler(httpReturn)
    }
}
