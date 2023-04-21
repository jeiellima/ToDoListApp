//
//  ListsTableViewCell.swift
//  DesesperateList
//
//  Created by Jeiel Lima on 21/04/23.
//

import UIKit

class ListsTableViewCell: UITableViewCell {

    @IBOutlet weak var ivList: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    @IBOutlet weak var lbSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
