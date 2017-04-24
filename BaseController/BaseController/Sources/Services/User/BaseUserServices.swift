//
//  BaseUserServices.swift
//  BaseController
//
//  Created by tran.quoc.quan on 4/24/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import UserController

class BaseUserServices: UserController {
    override init() {
        super.init()
    }
    
    // MARK: Shared Instance
    open static let sharedInstance: BaseUserServices = BaseUserServices()
    
    
    fileprivate func saveCurrentUser (user: UserObj) {
        
    }
    
}
