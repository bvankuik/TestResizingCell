//
//  CustomTableViewCell.swift
//  TestResizingCell
//
//  Created by Bart van Kuik on 20/01/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var expandButton: UIButton!
    @IBOutlet weak var nameCorrectionTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.nameCorrectionTextField.isHidden = true
    }

    @IBAction func expandButtonTouchUpInside(_ sender: Any) {
        self.nameCorrectionTextField.isHidden = false
    }
}
