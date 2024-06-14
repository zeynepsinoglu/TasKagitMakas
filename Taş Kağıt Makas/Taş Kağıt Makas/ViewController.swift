//
//  ViewController.swift
//  Taş Kağıt Makas
//
//  Created by Zeynep Sinoğlu on 14.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pcScor: UILabel!
    @IBOutlet weak var myScor: UILabel!
    @IBOutlet weak var myChoice: UILabel!
    @IBOutlet weak var pcChoice: UILabel!
    @IBOutlet weak var theEnd: UILabel!
    
    var pcPoint = 0
    var myPoint = 0
    let array = ["tas","kagit","makas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tasButton(_ sender: Any) {
        var randomSelected = Int(arc4random_uniform(3))
        var pcSelected = array[randomSelected]
        
        if pcSelected == "tas" {
            myChoice.text = "Taş"
            pcChoice.text = "Taş"
            theEnd.text = "Berabere"
            
        }else if pcSelected == "kagit"{
            myChoice.text = "Taş"
            pcChoice.text = "Kağıt"
            theEnd.text = "Bilgisayar kazandı!"
            
            pcPoint = pcPoint + 1
            pcScor.text = String(pcPoint)
            
        }else if pcSelected == "makas"{
            myChoice.text = "Taş"
            pcChoice.text = "Makas"
            theEnd.text = "Siz kazandınız!"
            
            myPoint = myPoint + 1
            myScor.text = String(myPoint)
            
        }
    }
    
    @IBAction func kagitButton(_ sender: Any) {
        var randomSelected = Int(arc4random_uniform(3))
        var pcSelected = array[randomSelected]
        
        if pcSelected == "Kagit" {
            myChoice.text = "Kağıt"
            pcChoice.text = "Kağıt"
            theEnd.text = "Berabere"
            
        }else if pcSelected == "tas"{
            myChoice.text = "Kağıt"
            pcChoice.text = "Taş"
            theEnd.text = "Siz kazandınız!"
            
            myPoint = myPoint + 1
            myScor.text = String(myPoint)
            
        }else if pcSelected == "makas"{
            myChoice.text = "Kağıt"
            pcChoice.text = "Makas"
            theEnd.text = "Bilgisayar kazandı!"
            
            pcPoint = pcPoint + 1
            pcScor.text = String(pcPoint)
            
        }
    }
    @IBAction func makasButton(_ sender: Any) {
        var randomSelected = Int(arc4random_uniform(3))
        var pcSelected = array[randomSelected]
        
        if pcSelected == "makas" {
            myChoice.text = "Makas"
            pcChoice.text = "Makas"
            theEnd.text = "Berabere"
            
        }else if pcSelected == "kagit"{
            myChoice.text = "Makas"
            pcChoice.text = "Kağıt"
            theEnd.text = "Siz kazandınız!"
            
            myPoint = myPoint + 1
            myScor.text = String(myPoint)
            
        }else if pcSelected == "tas"{
            myChoice.text = "Makas"
            pcChoice.text = "Taş"
            theEnd.text = "Bilgisayar Kazandı!"
            
            pcPoint = pcPoint + 1
            pcScor.text = String(pcPoint)
            
        }
    }
    
}

