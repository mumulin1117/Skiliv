//
//  SwitchRidingController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SwitchRidingController: UIViewController {
  
    @IBOutlet weak var bonks: UIButton!
    
    @IBOutlet weak var duckStance: UIButton!
    
    @IBOutlet weak var contetnviewSki: UIView!
    
    @IBOutlet weak var stubbies: UILabel!

    @IBOutlet weak var HISghyr: UIButton!
    
    @IBAction func Deraovert(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        flexPattern()
        contetnviewSki.frame.size.width = UIScreen.main.bounds.width
        
        duckStance.zipperLine(lwgber: 11)
        HISghyr.zipperLine(lwgber: 11)
    }
    
    @IBAction func tapIn(_ sender: UIButton) {
        let backcountry = ResortBoundController.init(arpeggiatorPro: .waxProfile)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    

    @IBAction func freshTracks(_ sender: UIButton) {
        let backcountry = ResortBoundController.init(arpeggiatorPro: .snowCats)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    
    
    @IBAction func catSkiing(_ sender: UIButton) {
        let backcountry = ResortBoundController.init(arpeggiatorPro: .trackedRuns)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    
    
    @IBAction func partnerRescue(_ sender: Any) {
        let backcountry = ResortBoundController.init(arpeggiatorPro: .riderProfile)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    
    @IBAction func baseMaterial(_ sender: UIButton) {
        var casetgor :SnowGunCase = .myVert
        if sender.tag == 34 {
            casetgor = .backcountryZones
        }else if sender.tag == 35 {
            casetgor = .gearLocker
        }else if sender.tag == 36 {
            casetgor = .liftTickets
        }else if sender.tag == 37 {
            casetgor = .lastRuns
        }else if sender.tag == 38 {
            casetgor = .bindingSetup
        }
        let backcountry = ResortBoundController.init(arpeggiatorPro: casetgor)
        self.navigationController?.pushViewController(backcountry, animated: true)
        
        
        
    }
    
    
   
    
    func flexPattern()  {
        stubbies.text = UserDefaults.standard.object(forKey: "fallLine") as? String ?? "NUll"
        bonks.backgroundImage(for: .normal)
        
        
        guard let urlString = UserDefaults.standard.object(forKey: "zipperLine") as? String ,
              let url = URL(string: urlString) else {
            return
        }
        
        // 异步加载图片
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.bonks.setBackgroundImage(image, for: .normal)
                }
            }
        }
       
    }
}
