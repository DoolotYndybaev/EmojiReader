//
//  NewemojiTableViewController.swift
//  EmojiReader
//
//  Created by Doolot on 29/7/22.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", decsription: "", isFavorite: false)
    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var descriptionTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSaveButton()
        updateUI()
    }
    
    // MARK: - Table view data source
    
    private func updateSaveButton() {
        let emogiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emogiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    private func updateUI() {
        emojiTF.text = emoji.emoji
        nameTF.text = emoji.name
        descriptionTF.text = emoji.decsription
    }
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, decsription: description, isFavorite: self.emoji.isFavorite)
    }
    
}
