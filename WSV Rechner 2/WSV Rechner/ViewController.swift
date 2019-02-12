//
//  ViewController.swift
//  WSV Rechner
//
//  Created by Timon on 12.02.19.
//  Copyright © 2019 Timon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //will not edit these cause i dont know how the bindings behave
    @IBOutlet weak var eingabeBetragTextfield: UITextField!
    @IBOutlet weak var ersparnisBetragLabel: UILabel!
    @IBOutlet weak var gesamtkostenBetragLabel: UILabel!
    
    var cost = 0.0
    var savings = 0.0
    var totalSum = 0.0
    var percent = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func prozenButtonTapped(_ sender: UIButton) {
        if sender.titleLabel?.text == "10%" {
            percent = 10
            
            calculateCosts()
        } else if sender.titleLabel?.text == "20%" {
            percent = 20
            
            calculateCosts()
        } else if sender.titleLabel?.text == "30%" {
            percent = 30
            
            calculateCosts()
        } else if sender.titleLabel?.text == "50%" {
            percent = 50
            
            calculateCosts()
        }
    }
    
    func printUIElements() {
        let savingsStr = String(Int(savings))
        let totalSumStr = String(format: "%.2f", totalSum)
        
        ersparnisBetragLabel.text = "Ersparnis: " + savingsStr + " €"
        gesamtkostenBetragLabel.text = "Gesamtkosten: " + totalSumStr + " €"
    }
    
    func calculateCosts() {
        if eingabeBetragTextfield.text != "" {
            cost = Double(eingabeBetragTextfield.text!)!
            
            savings = (cost * Double(percent)) / 100
            totalSum = cost - savings
            
            printUIElements()  
    }

}
}
