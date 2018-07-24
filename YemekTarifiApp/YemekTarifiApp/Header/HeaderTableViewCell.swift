//
//  HeaderTableViewCell.swift
//  YemekTarifiApp
//
//  Created by Halil Özel on 23.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var headerText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
