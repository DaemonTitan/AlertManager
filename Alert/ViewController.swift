//
//  ViewController.swift
//  Alert
//
//  Created by Tony Chen on 24/2/2023.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func incompleteFormButton() {
        //incompleteFormButtonTapped()
        showAlert()
    }

    @IBAction func invalidEmailButton() {
        invalidEmailButtonTapped()
    }
    
    @IBAction func unableToRetrieveDataButton() {
        unableToRetrieveDataButtonTapped()
    }
    
    @IBAction func ActionSheet() {
        showActionSheet()
    }
    
    func incompleteFormButtonTapped() {
        Alert.showIncompleteFormAlert(on: self)
    }
    
    func invalidEmailButtonTapped() {
        Alert.showInvalidEmailAlert(on: self)
    }
    
    func unableToRetrieveDataButtonTapped() {
        Alert.showUnableToRetrieveDataAlert(on: self)
    }
    
    
    func showAlert() {
        let alert = UIAlertController(title: "Alet Title", message: "Alet Message", preferredStyle: .alert)
        
        
        
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive)

        
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        alert.addAction(dismissAction)
        present(alert, animated: true)
    }
    
    
    
    func showActionSheet() {
        let actionSheet = UIAlertController(title: "Titile", message: "This is a alert message", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
            print("Tapped Dismiss")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            print("Tapped Dismiss")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Accept", style: .default, handler: { action in
            print("Tapped Dismiss")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action in
            print("Tapped Dismiss")
        }))
        
        
        present(actionSheet, animated: true)
    }
    

}

