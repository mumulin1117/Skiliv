//
//  BoxJumpController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class BoxJumpController: UIViewController {

    @IBOutlet weak var treeLine: UITextField!
    
    @IBOutlet weak var avvyGear: UITextField!
    
    @IBOutlet weak var statuYamisLabel: UILabel!
    
    @IBOutlet weak var beacon: UIButton!
    
    
    @IBOutlet weak var probe: UIButton!
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    
    @IBOutlet weak var dawnPatrolLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        probe.addTarget(self, action: #selector(offPiste), for: .touchUpInside)
    }
    
    
    @objc func offPiste()  {
        probe.isSelected = !probe.isSelected
    }

  
    @IBAction func shovel(_ sender: UIButton) {
        if sender.tag == 40 {
            let backcountry = ResortBoundController.init(arpeggiatorPro: .mountainCode)
            self.present(backcountry, animated: true, completion: nil)
            return
        }
        
        let backcountry = ResortBoundController.init(arpeggiatorPro: .snowPact)
        self.present(backcountry, animated: true, completion: nil)
        
    }
    
    
    @IBAction func highbackSignIN(_ sender: UIButton) {
        guard let email = treeLine.text, touringBindings(email) else {
           
            self.showingSKIStatu(information: "Please enter a valid email.")
            return
            
        }
                
        guard probe.isSelected else {
            self.showingSKIStatu(information: "Please agree to the privacy policy.")
            
            return
        }
        
        
        guard let pased = avvyGear.text, !pased.isEmpty else {
           
            self.showingSKIStatu(information: "Please enter a valid email.")
            return
            
        }
        
        
        self.showingSKIStatu(information: "Logging in...")
        self.view.isUserInteractionEnabled = false
        pillowLineView.startAnimating()
        BackcountryAPISender.sendMountainRequest(trailPath: "/oxzpnhjzwrmqwiz/kqyyxff", payload: ["buckle":"95578703",
                                                "thermoFit":email,        "liner":pased]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
                self.showingSKIStatu(information: "Invalid response from server.")
                return
                
            }
            
            
            guard let detail = response["data"] as? [String: Any] else {
                self.showingSKIStatu(information: "Email or password is error!")
                return
                
            }
                
            
            
            let coreShot =  detail["coreShot"] as? String
            
            UserDefaults.standard.set(coreShot, forKey: "coreShot")
            
            
//            let berm =  detail["berm"] as? Int
//            
//            UserDefaults.standard.set(berm, forKey: "berm")
            
//            UserDefaults.standard.set(email, forKey: "loagineamilg")
            
            
            UserDefaults.standard.set(detail["zipperLine"] as? String, forKey:"zipperLine")
            UserDefaults.standard.set(detail["fallLine"] as? String, forKey:"fallLine")
            
            self.showingSKIStatu(information: "Sign in successful!", isOKAYSHowi: true)
            
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
        } errorHandler: { wer in
            self.pillowLineView.stopAnimating()
            self.showingSKIStatu(information: wer.localizedDescription)
        }

    }
    
    func touringBindings(_ email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: email)
        
    }
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        statuYamisLabel.isHidden = false
        statuYamisLabel.text = information
        statuYamisLabel.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.statuYamisLabel.isHidden = true
        }
    }
}
