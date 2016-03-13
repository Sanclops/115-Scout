//
//  SettingsTableViewCell.swift
//  115 Scout
//
//  Created by Sankalp Agrawal on 3/13/16.
//  Copyright © 2016 Sankalp Agrawal. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {


    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
