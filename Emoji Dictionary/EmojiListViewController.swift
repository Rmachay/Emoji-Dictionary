//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Machay on 6/28/15.
//  Copyright (c) 2015 Ryan Machay. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["💩","😱","😜","👹","😘","💁","👍","😂","🙀","🙉"]
    var emoji = "🍕"
    var definitions = ["Happy Poo", "Screaming Face", "Face With Stuck Out Tounge and Wink", "Devil", "Kissy Face", "Givin' No Fucks", "Thumbs Up", "Crying From Launging Too Hard", "Cat Screaming Face", "Hear No Evil"]
    var definition = "Place Holder"
    
    override func viewDidLoad() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.definition = self.definitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.definition = self.definition
    }
    
}

