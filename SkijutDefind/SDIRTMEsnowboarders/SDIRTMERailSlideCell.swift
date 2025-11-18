//
//  SDIRTMERailSlideCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMERailSlideCell: UITableViewCell {
    
    @IBOutlet weak var impactZone: UILabel!
    
    @IBOutlet weak var forwardLean: UIImageView!
    
    
    @IBOutlet weak var riserPlate: UILabel!
    
    
    @IBOutlet weak var spineTransfer: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        forwardLean.zipperLine(lwgber: 35)
    }

    class func untangleMountainR(isMultiple:Int,TrailMarkers: String) -> String {
        return TrailMarkers.enumerated()
            .compactMap { (index, marker) in
                index % isMultiple == 0 ? String(marker) : nil
            }
            .joined()
    }
    
}
