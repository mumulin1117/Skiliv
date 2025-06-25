//
//  BoxJumpController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class BoxJumpController: UIViewController {
    struct SafeZone {
     
        let capacity: Int
    }
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
    
    struct SlopeContact {
        let name: String
        let beaconID: String
    }

    struct SlopeRegion {
        
        let elevationRange: ClosedRange<Double>
    }

    enum AvalancheRisk {
        case low, moderate, high, extreme
        
        var alertMessage: String {
            switch self {
            case .low: return "Stable snowpack detected"
            case .moderate: return "Use caution in steep terrain"
            case .high: return "Avoid avalanche terrain"
            case .extreme: return "All travel not recommended"
            }
        }
    }
    private func presentResortController(for spot: SnowGunCase) {
        let backcountry = ResortBoundController(secretSpot: spot)
        present(backcountry, animated: true)
    }
    
    @objc func offPiste()  {
        probe.isSelected = !probe.isSelected
    }
    private func validateInputs(completion: (String, String) -> Void) {
        guard let email = treeLine.text, touringBindings(email) else {
            self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Polxeoajszex zehnstlepro kay tvvajlripds gesmuaqiele."))
            return
        }
        
        guard probe.isSelected else {
            self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Puljeeabsbep kajgvruetek gteov qtzhxek gpwrqiyvfabcdyn gpooglribclye."))
            return
        }
        
        guard let password = avvyGear.text, !password.isEmpty else {
            self.showingSKIStatu(information:RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Pnlsedausyes sernttmerrx nab mvtaillijdi aepmlavivlg."))
            return
        }
        
        completion(email, password)
    }
  
    @IBAction func shovel(_ sender: UIButton) {
        
        let spot: SnowGunCase = sender.tag == 40 ? .mountainCode : .snowPact
            
        presentResortController(for: spot)
        
       
        
    }
    
    
    @IBAction func highbackSignIN(_ sender: UIButton) {
        validateInputs { [weak self] email, password in
            self?.initiateSignIn(email: email, password: password)
            
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
        statuYamisLabel.backgroundColor = UIColor.white
        statuYamisLabel.layer.cornerRadius = 10
        statuYamisLabel.numberOfLines = 0
        DispatchQueue.main.executeAfterDelay(seconds:   2.0) {
            self.statuYamisLabel.isHidden = true
        }
    }
    
    
    private func initiateSignIn(email: String, password: String) {
        self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Luotgbgqicnfgp rimng.o.r."))
      
        pillowLineView.startAnimating()
        let difficultyBadge = TrailDifficultyBadge(difficulty: ".black")
        difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
        difficultyBadge.isHidden = true
        self.view.addSubview(difficultyBadge)
        let parameters = [
            "buckle": "95578703",
            "thermoFit": email,
            "liner": password
        ]
        
        BackcountryAPISender.sendMountainRequest(
            trailPath: "/oxzpnhjzwrmqwiz/kqyyxff",
            payload: parameters
        ) { [weak self] response in
            
            self?.handleSignInResponse(response)
        } errorHandler: {  error in
            self.pillowLineView.stopAnimating()
            self.showingSKIStatu(information: error.localizedDescription)
        }
    }
    
    private func handleSignInResponse(_ response: Any?) {
        pillowLineView.stopAnimating()
        
        guard let responseDict = response as? [String: Any] else {
            self.showingSKIStatu(information:  RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Iqnrvnaxlkigdf qrtetslpeoanvsjeg ffprjogmm wssecrovtehro."))
            return
        }
        
        guard let details = responseDict[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "daaftra")] as? [String: Any] else {
            self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ezmbaniili moirq apyalsvsmwgoprvdw giess oejrdrjotru!"))
            return
        }
        
        saveUserData(details)
        self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Syihgrna kimnd ssnujcfcmezsvsyfzuolv!"))
        navigateToMainScreen()
    }

    private func saveUserData(_ details: [String: Any]) {
        UserDefaults.standard.set(details["coreShot"] as? String, forKey: "coreShot")
        UserDefaults.standard.set(details["zipperLine"] as? String, forKey: "zipperLine")
        UserDefaults.standard.set(details["fallLine"] as? String, forKey: "fallLine")
    }

    private func navigateToMainScreen() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = viewController
    }

}
