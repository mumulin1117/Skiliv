//
//  LandingZoneCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class LandingZoneCell: UICollectionViewCell {

    @IBOutlet weak var avctinopent: UILabel!
    
    @IBOutlet weak var chalet: UIImageView!
    
    
    @IBOutlet weak var lodge: UIImageView!
    
    @IBOutlet weak var bootPack: UILabel!
    
    
    @IBOutlet weak var baseGrind: UILabel!
    
    @IBOutlet weak var stompPad: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.zipperLine(lwgber: 18)
        chalet.zipperLine(lwgber: 18)
        lodge.zipperLine(lwgber: 16)
    }

}
