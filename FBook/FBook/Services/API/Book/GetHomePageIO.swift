//
//  GetHomePageIO.swift
//  FBook
//
//  Created by admin on 5/25/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit
import ObjectMapper

class GetHomePageInput: APIInputBase {
    
    init() {
        super.init(urlString: APIURL.getHomePage,
                   parameters: nil,
                   requestType: .get)
    }
    
}

class GetHomePageOutput: APIOutputBase {
    
    var sectionsBook: [SectionBook]
    
    private override init() {
        sectionsBook = [SectionBook]()
        super.init()
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        sectionsBook <- map["items"]
    }
}
