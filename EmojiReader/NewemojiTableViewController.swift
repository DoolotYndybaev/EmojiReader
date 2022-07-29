//
//  NewemojiTableViewController.swift
//  EmojiReader
//
//  Created by Doolot on 29/7/22.
//

import UIKit

class NewemojiTableViewController: UITableViewController {
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var descriptionTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    @IBAction func textChanged(_ sender: UITextField) {
        
    }
    
}
