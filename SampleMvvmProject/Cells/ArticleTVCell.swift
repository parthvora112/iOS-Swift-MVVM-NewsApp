//
//  ArticleTVCell.swift
//  SampleMvvmProject
//
//  Created by AlaaElrhman Arafa on 28/12/2020.
//

import UIKit

class ArticleTVCell: UITableViewCell {

    @IBOutlet weak var descritionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
