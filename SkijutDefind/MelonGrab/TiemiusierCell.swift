//
//  Tiemiusi/Users/mac/Documents/Skiliv/SkijutDefinderCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class TiemiusierCell: UICollectionViewCell {

    @IBOutlet weak var heelDrag: UIImageView!
    
    @IBOutlet weak var duckStance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heelDrag.zipperLine(lwgber: 27)
    }

}
