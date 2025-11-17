//
//  SDIRTMEMelonGrabCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMEMelonGrabCell: UICollectionViewCell {
    
    
    @IBOutlet weak var toeDrag: UIImageView!
    

    @IBOutlet weak var coreShot: UILabel!
    
    
    @IBOutlet weak var thermoFit: UILabel!
    
    @IBOutlet weak var buckle: UIButton!
    
    @IBOutlet weak var commnrUAn: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        toeDrag.zipperLine(lwgber: 18)
        self.zipperLine(lwgber: 18)
        commnrUAn.placeholder = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Aedldx pcrojmvmreknbtj&")
    }

}
