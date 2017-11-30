//
//  ViewController.swift
//  Calculator
//
//  Created by Abdullah Azzam Fawwazi on 17/10/17.
//  Copyright © 2017 W2K Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0
    var finalNumber : Double = 0
    var sign : String = ""
    var answer : Double = 0
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton) {
        
        if  label.text == "+" {
            label.text = String(sender.tag)
        } else if label.text == "+" {
            label.text = String(sender.tag)
        } else if label.text == "-" {
            label.text = String(sender.tag)
        } else if label.text == "x" {
            label.text = String(sender.tag)
        } else if label.text == "/" {
            label.text = String(sender.tag)
        } else {
            label.text = label.text! + String(sender.tag)
        }
    }
    @IBAction func buttons(_ sender: UIButton) {
        
        // = = 10
        // + = 11
        // - = 12
        // x = 13
        // / = 14
        // c = 15
        
        if label.text != "" {
            if sender.tag == 11 {
                firstNumber = Double(label.text!)!
                sign = "+"
                label.text = "+"
            } else if sender.tag == 12 {
                firstNumber = Double(label.text!)!
                sign = "-"
                label.text = "-"
            } else if sender.tag == 13 {
                firstNumber = Double(label.text!)!
                sign = "x"
                label.text = "x"
            } else if sender.tag == 14 {
                firstNumber = Double(label.text!)!
                sign = "/"
                label.text = "/"
            } else if sender.tag == 15 {
                firstNumber = 0
                finalNumber = 0
                sign = ""
                label.text = ""
            } else if sender.tag == 10 {
                if firstNumber != 0 {
                    finalNumber = Double(label.text!)!
                    
                    if sign == "+" {
                        answer = firstNumber + finalNumber
                        label.text = String(answer)
                    } else if sign == "-" {
                        answer = firstNumber - finalNumber
                        label.text = String(answer)
                    } else if sign == "x" {
                        answer = firstNumber * finalNumber
                        label.text = String(answer)
                    } else if sign == "/" {
                        answer = firstNumber / finalNumber
                        label.text = String(answer)
                    }
                }
            }
        }
            
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

