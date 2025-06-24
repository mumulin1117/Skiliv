//
//  MelonGrabCell.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class MelonGrabCell: UICollectionViewCell {
    
    
    @IBOutlet weak var toeDrag: UIImageView!
    

    @IBOutlet weak var coreShot: UILabel!
    
    
    @IBOutlet weak var thermoFit: UILabel!
    
    @IBOutlet weak var buckle: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        toeDrag.zipperLine(lwgber: 18)
    }

}
