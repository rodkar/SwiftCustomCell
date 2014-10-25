//
//  CustomCell.swift
//  SwiftCustomCell
//
//  Created by Kar Roderick Sze Hsing on 10/25/14.
//  Copyright (c) 2014 Cloudyun. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var middleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(leftLabelText:String, rightLabelText:String, middleLabelInt:Int){
        self.leftLabel.text = leftLabelText
        self.rightLabel.text = rightLabelText
        self.middleLabel.text = String(middleLabelInt)
    }

}
