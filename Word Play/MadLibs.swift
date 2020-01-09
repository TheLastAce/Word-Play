//
//  MadLibs.swift
//  Word Play
//
//  Created by Christina Ferrari on 10/24/19.
//  Copyright © 2019 TheLastAce. All rights reserved.
//

import Foundation

class MadLibs{
    
    var adj0 = ""
    var color = ""
    var name0 = ""
    var name1 = ""
    
    var name2 = ""
    var adj1 = ""
    var noun = ""
    var adj2 = ""
    
    func writeStory() -> String {
        let story = "It was a very \(adj0) day. The trees’ leaves turned coral \(color). " + " \(name0) wanted to go to the pumpkin patch so \(name1) was invited and they got into the car. " + "Once at the pumpkin patch the Demon Lord, \(name2), tried to steal all the pumpkins! " + "He was very \(adj1) and exploded the Pumpkin \(noun)! " + "Everyone at the pumpkin patch just left saying, 'That’s rather \(adj2).' "
        return story
    }
    
}




