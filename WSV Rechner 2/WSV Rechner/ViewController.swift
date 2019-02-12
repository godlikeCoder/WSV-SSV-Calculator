//
//  ViewController.swift
//  WSV Rechner
//
//  Created by Timon on 12.02.19.
//  Copyright © 2019 Timon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var eingabeBetragTextfield: UITextField!
    @IBOutlet weak var ersparnisBetragLabel: UILabel!
    @IBOutlet weak var gesamtkostenBetragLabel: UILabel!
    
    var kosten = 0.0
    var ersparnis = 0.0
    var gesamtkosten = 0.0
    
    var prozente = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func prozenButtonTapped(_ sender: UIButton) {
        if sender.titleLabel?.text == "10%" {
            prozente = 10
            
            ausrechnenDerKosten()
        } else if sender.titleLabel?.text == "20%" {
            prozente = 20
            
            ausrechnenDerKosten()
        } else if sender.titleLabel?.text == "30%" {
            prozente = 30
            
            ausrechnenDerKosten()
        } else if sender.titleLabel?.text == "50%" {
            prozente = 50
            
            ausrechnenDerKosten()
        }
    }
    
    func printUIElements() {
        let ersparnisString = String(Int(ersparnis))
        let gesamtkostenString = String(format: "%.2f", gesamtkosten)
        
        ersparnisBetragLabel.text = "Ersparnis: " + ersparnisString + " €"
        gesamtkostenBetragLabel.text = "Gesamtkosten: " + gesamtkostenString + " €"
    }
    
    func ausrechnenDerKosten() {
        if eingabeBetragTextfield.text != "" {
            kosten = Double(eingabeBetragTextfield.text!)!
            
            ersparnis = (kosten * Double(prozente)) / 100
            gesamtkosten = kosten - ersparnis
            
            printUIElements()
            
    }

}

}
