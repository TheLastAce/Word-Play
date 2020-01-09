//
//  ViewController2.swift
//  Word Play
//
//  Created by Christina Ferrari on 10/16/19.
//  Copyright © 2019 TheLastAce. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var name2TextField: UITextField!
    @IBOutlet weak var adj1TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var adj2TextField: UITextField!
    var madLib = MadLibs()
    
    @IBAction func onNextButtonTapped1(_ sender: Any) {
        if name2TextField.text?.count != 0 &&
            adj1TextField.text?.count != 0 &&
            nounTextField.text?.count != 0 &&
            adj2TextField.text?.count != 0 {
            
            madLib.name2 = name2TextField.text!
            madLib.adj1 = adj1TextField.text!
            madLib.noun = nounTextField.text!
            madLib.adj2 = adj2TextField.text!
           
            performSegue(withIdentifier: "SecondToThirdVCSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ViewController3
        dvc.madLib = self.madLib
    }
}





/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


