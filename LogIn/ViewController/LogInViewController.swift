//
//  LogInViewController.swift
//  LogIn
//
//  Created by Станислав Криницкий on 26.11.2019.
//  Copyright © 2019 Stanislav Krinickij. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    var login: String!
    
    @IBOutlet var loginLabel: UILabel!
    
    @IBOutlet var exitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        
        loginLabel.text = "Welcom \(login)!"
    }
}
