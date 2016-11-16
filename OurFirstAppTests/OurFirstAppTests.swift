//
//  OurFirstAppTests.swift
//  OurFirstAppTests
//
//  Created by Joshua Johanan on 2/15/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import XCTest
@testable import OurFirstApp

class OurFirstAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetIt() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let mock = HTTPMock()
        mock.httpReturn = "Google"
        
        //bad example, but demonstrates what we can do 
        //with an easily mocked object
        let getIt = HTTPGetIt(http: mock)
        getIt.GetMeGoogle{html in
            XCTAssert(html!.rangeOfString("Google") != nil)
        }
    }
    
    
}
