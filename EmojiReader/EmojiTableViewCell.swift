//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Doolot on 29/7/22.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(object: Emoji){
        self.emojiLabel.text = object.emoji
        self.namelabel.text = object.name
        self.descriptionLabel.text = object.decsription
    }

}
