//
//  TiemiusierCell.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
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
