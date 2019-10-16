//
//  ViewController.swift
//  icatalystcalc
//
//  Created by Harny Otuoniyo on 12/10/2019.
//  Copyright © 2019 Harny Otuoniyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performMath:Bool = false;
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performMath = false;
        } else {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if(label.text != "" && (sender.tag == 14 || sender.tag == 15 || sender.tag == 16 || sender.tag == 17)){
            previousNumber = Double(label.text!)!
            if sender.tag == 14 {
                label.text = "/";
                
            } else if sender.tag == 15 {
                label.text = "*";
            } else if sender.tag == 16 {
                label.text = "-";
            } else if sender.tag == 17 {
                label.text = "+";
            }
            performMath = true;
            operation = sender.tag;
        }
        
        else if
            sender.tag == 20 {
            if operation == 14 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 15 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 16 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 17 {
                label.text = String(previousNumber + numberOnScreen)
            }
                
            }
        else if sender.tag == 11 {
            label.text = "";
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
        else if sender.tag == 12 {
            label.text = "";
            //previousNumber = 0;
            numberOnScreen = 0;
            //operation = 0;
        }
        else if sender.tag == 13 {
            label.text = String(numberOnScreen / 100);
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

