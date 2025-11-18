//
//  Tiemiusi/Users/mac/Documents/Skiliv/SkijutDefinderCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMETiemiusierCell: UICollectionViewCell {

    @IBOutlet weak var heelDrag: UIImageView!
    
    @IBOutlet weak var duckStance: UILabel!
    
    
    @IBOutlet weak var SDIRTMEStory: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heelDrag.zipperLine(lwgber: 27)
        SDIRTMEStory.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Amdmdq rsgtdovrzy")
    }

}
