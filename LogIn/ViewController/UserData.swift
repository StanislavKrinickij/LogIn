//
//  UserData.swift
//  LogIn
//
//  Created by Станислав Криницкий on 28.11.2019.
//  Copyright © 2019 Stanislav Krinickij. All rights reserved.
//

import Foundation

struct UserData {
    var user: String
    var password: String
    
    static func getUserData() -> UserData {
        UserData(user: "admin", password: "admin")
    }
}
