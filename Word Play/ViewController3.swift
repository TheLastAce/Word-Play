//
//  ViewController3.swift
//  Word Play
//
//  Created by Christina Ferrari on 10/16/19.
//  Copyright © 2019 TheLastAce. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var storyText: UITextView!
    var madLib = MadLibs()

    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = madLib.writeStory()        
    }
}
