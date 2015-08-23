//
//  ItemTVC.swift
//  TrocaTroca
//
//  Created by Humberto  Julião on 22/08/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import UIKit

class ItemTVC: UITableViewCell {

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var local: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
