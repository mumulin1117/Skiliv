//
//  SwitchRidingController.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class SwitchRidingController: UIViewController {

   
    @IBOutlet weak var bonks: UIButton!
    
    
    @IBOutlet weak var contetnviewSki: UIView!
    
    @IBOutlet weak var stubbies: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contetnviewSki.frame.size.width = UIScreen.main.bounds.width
    }
    
    @IBAction func tapIn(_ sender: UIButton) {//edit
    }
    

    @IBAction func freshTracks(_ sender: UIButton) {//fans
    }
    
    
    @IBAction func catSkiing(_ sender: UIButton) {//follow
    }
    
    
    @IBAction func partnerRescue(_ sender: Any) {//wallent
        
    }
    
    @IBAction func baseMaterial(_ sender: UIButton) {
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        flexPattern()
    }
    
    func flexPattern()  {
        
    }
}
