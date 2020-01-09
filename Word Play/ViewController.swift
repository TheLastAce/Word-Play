//
//  ViewController.swift
//  Word Play
//
//  Created by Christina Ferrari on 10/16/19.
//  Copyright © 2019 TheLastAce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var adj0TextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var name0TextField: UITextField!
    @IBOutlet weak var name1TextField: UITextField!
    var madLib = MadLibs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onNextButtonTapped(_ sender: Any) {
        if adj0TextField.text?.count != 0 &&
            colorTextField.text?.count != 0 &&
            name0TextField.text?.count != 0 &&
            name1TextField.text?.count != 0 {
        
        madLib.adj0 = adj0TextField.text!
        madLib.color = colorTextField.text!
        madLib.name0 = name0TextField.text!
        madLib.name1 = name1TextField.text!
            performSegue(withIdentifier: "FirstToSecondVCSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ViewController2
        dvc.madLib = self.madLib
    }
}

