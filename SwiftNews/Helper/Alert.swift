//
//  Alert.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit


//MARK: - Show simple alerts
extension  UIViewController {
    
    func showAlert(withTitle title: String, withMessage message:String, buttonTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: buttonTitle, style: .default, handler: { action in
        })
        alert.addAction(ok)
        
        DispatchQueue.main.async(execute: {
            self.present(alert, animated: true)
        })
    }
}
