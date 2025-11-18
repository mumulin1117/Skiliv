//
//  FrontsiderCell.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMEFrontsiderCell: UICollectionViewCell {
    @IBOutlet weak var breakableCrust: UIImageView!
    
    @IBOutlet weak var blueIce: UIImageView!
    
    
    @IBOutlet weak var crud: UIButton!
    
    
    @IBOutlet weak var deathCookies: UILabel!
    
    
    @IBOutlet weak var snowSnake: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        apresSki()
    }

}

extension SDIRTMEFrontsiderCell{
    func apresSki()  {
        breakableCrust.zipperLine(lwgber: 18)
        crud.zipperLine(lwgber: 11)
    }
}

extension UIView{
    func zipperLine(lwgber:CGFloat)  {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = lwgber
    }
}
