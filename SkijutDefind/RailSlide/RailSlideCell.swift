//
//  RailSlideCell.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class RailSlideCell: UITableViewCell {
    
    @IBOutlet weak var impactZone: UILabel!
    
    @IBOutlet weak var forwardLean: UIImageView!
    
    
    @IBOutlet weak var riserPlate: UILabel!
    
    
    @IBOutlet weak var spineTransfer: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        forwardLean.zipperLine(lwgber: 35)
    }

   
    
}
