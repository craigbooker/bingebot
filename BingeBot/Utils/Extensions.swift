//
//  Extensions.swift
//  BingeBot
//
//  Created by Craig Booker on 2/7/20.
//  Copyright © 2020 Arcadia Softworks. All rights reserved.
//

import UIKit


extension String {
    var isNotEmpty : Bool {
        return !isEmpty
    }
}

extension UIViewController {

    
    func simpleAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
