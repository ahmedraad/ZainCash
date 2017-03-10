//
//  ViewController.swift
//  Zain Cash iOS
//
//  Created by Ahmed Raad on 3/10/17.
//  Copyright © 2017 Ahmed Raad. All rights reserved.
//

import UIKit
import ZainCash

class ViewController: UIViewController {
    
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var serviceField: UITextField!
    @IBOutlet weak var msisdnField: UITextField!
    @IBOutlet weak var orderIdField: UITextField!
    
    
    @IBOutlet weak var resultView: UITextView!
    
    var payment = ZainCashPayment()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Your Wallet secret key
        payment.key = "secretsecretsecretsecretsecretsecretsecrets"
        
        // Your merchant id
        payment.merchant = "572487bca0a4d6f2688c1ee3"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PayClick(_ sender: UIButton) {
        if let amount = Int(self.amountField.text!) {
            // Product Amount
            payment.amount = amount
        }
        
        // Which type of Product
        payment.serviceType = self.serviceField.text!
        
        if let msisdn = Int(self.msisdnField.text!) {
            // Your phone number wallet
            payment.msisdn = msisdn
        }
        
        // User order id (optional)
        payment.orderId = 1234
        
        payment.makePayment { (result, error) in
            if error != nil {
                print(error?.localizedDescription)
            }
            
            self.resultView.text = "\(result)"
        }
    }

}

