//
//  IngredientTableViewCell.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/06.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
