//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Machay on 6/28/15.
//  Copyright (c) 2015 Ryan Machay. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var DefinitionLabel: UILabel!

    var emoji = "🍕"
    var definition = "Place Holder"
    
    override func viewDidLoad() {
        
            self.EmojiLabel.text = self.emoji
            self.DefinitionLabel.text = self.definition
    }

}