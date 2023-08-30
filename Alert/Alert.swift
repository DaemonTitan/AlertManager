//
//  Alert.swift
//  Alert
//
//  Created by Tony Chen on 24/2/2023.
//

import Foundation
import UIKit

struct Alert {
    
    private static func showBasicAlert(on vc: ViewController, with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let settingAction = UIAlertAction(title: "Setting", style: .cancel, handler: { action in
            let alert = Alert()
            alert.openSettings()
        })
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default, handler: { action in
            print("Tapped Dismiss")
        })
        
        alert.addAction(settingAction)
        alert.addAction(dismissAction)
        vc.present(alert, animated: true)
    }
    
    func openSettings() {
        if let url = URL.init(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    static func showIncompleteFormAlert(on vc: UIViewController) {
        showBasicAlert(on: vc as! ViewController, with: "Incomplete From", message: "Please fill out all fields")
    }
    
    static func showInvalidEmailAlert(on vc: UIViewController) {
        showBasicAlert(on: vc as! ViewController, with: "Invalid Email", message: "Please enter a valid email address")
    }
    
    static func showUnableToRetrieveDataAlert(on vc: UIViewController) {
        showBasicAlert(on: vc as! ViewController, with: "Unable to Retrieve Data", message: "There was a network error, please try again")
    }
}
