//
//  SDIRTMEBoxJumpController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMEBoxJumpController: UIViewController {
    struct SafeZone {
     
        let capacity: Int
    }
    
    @IBOutlet weak var SDIRTMEwelcome: UILabel!
    
    
    
    @IBOutlet weak var treeLine: UITextField!
    
    @IBOutlet weak var avvyGear: UITextField!
    
    @IBOutlet weak var statuYamisLabel: UILabel!
    
    @IBOutlet weak var beacon: UIButton!
    
    
    @IBOutlet weak var probe: UIButton!
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    
    @IBOutlet weak var dawnPatrolLbl: UILabel!
    
    @IBOutlet weak var emialoSDIRTME: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        treeLine.SDIRTMEFlloerDoneKeyuoOrd(key: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Dsoqnve"))
       
        probe.addTarget(self, action: #selector(SDIRTMEoffPiste), for: .touchUpInside)
        avvyGear.SDIRTMEFlloerDoneKeyuoOrd(key: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Dsoqnve"))
        
        SDIRTMEwelcome.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Wmetlrcjommgeh d!")
        treeLine.placeholder = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Emnytkenrr fecmiapitlz sabdjdkroeasms")
        emialoSDIRTME.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Eimxaqikl")
        
        passSDIRTME.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: " yPbaosksewbojrndm ")
        
        avvyGear.placeholder = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Eknitfearn wpzadsasvwxoprjd")
        
        beacon.setTitle(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Sziggone uipn"), for: .normal)
        noaccountADITTIME.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ntoq iaccwcqohusnhtg?pWjeu nwcimlzlt osqeetq jojnied cuwpu.")
        SDIRTMEBy.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Bkyq bczoxnrtdihnruaicnfgl vyrokuf iaogsreedeb ltzoq goaujr")
        
        SDIRTMEterm.setTitle(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Tqelrgmlsb ioxfh fSceareveimcle"), for: .normal)
        
        SDIRTMEpri.setTitle(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Pvrqiyvfazcyyj iPfoxlsisciy"), for: .normal)
        
        dawnPatrolLbl.text = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Lyogawdniznsgy.h.z.")
    }
    
    @IBOutlet weak var SDIRTMEpri: UIButton!
    
    @IBOutlet weak var SDIRTMEterm: UIButton!
    
    @IBOutlet weak var SDIRTMEBy: UILabel!
    
    
    @IBOutlet weak var passSDIRTME: UILabel!
    
    struct SlopeContact {
        let name: String
        let beaconID: String
    }

    struct SlopeRegion {
        
        let elevationRange: ClosedRange<Double>
    }

    
    @IBOutlet weak var noaccountADITTIME: UILabel!
    
    
    
    enum SDIRTMEAvalancheRisk {
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
    private func presentResortController(for spot: SDIRTMESnowGunCase) {
        let backcountry = DIRTMEResortBoundController(secretSpot: spot)
        present(backcountry, animated: true)
    }
    
    @objc func SDIRTMEoffPiste()  {
        probe.isSelected = !probe.isSelected
    }
    private func validateInputs(completion: (String, String) -> Void) {
        guard let email = treeLine.text, touringBindings(email) else {
            self.showingSKIStatu(information: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Polxeoajszex zehnstlepro kay tvvajlripds gesmuaqiele."))
            return
        }
        
        guard probe.isSelected else {
            self.showingSKIStatu(information: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Puljeeabsbep kajgvruetek gteov qtzhxek gpwrqiyvfabcdyn gpooglribclye."))
            return
        }
        
        guard let password = avvyGear.text, !password.isEmpty else {
            self.showingSKIStatu(information:SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Pnlsedausyes sernttmerrx nab mvtaillijdi aepmlavivlg."))
            return
        }
        
        completion(email, password)
    }
  
    @IBAction func shovel(_ sender: UIButton) {
        
        let spot: SDIRTMESnowGunCase = sender.tag == 40 ? .mountainCode : .snowPact
            
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
        self.showingSKIStatu(information: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Luotgbgqicnfgp rimng.o.r."))
      
        pillowLineView.startAnimating()
        let difficultyBadge = SDIRTMETrailDifficultyBadge(difficulty: ".black")
        difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
        difficultyBadge.isHidden = true
        self.view.addSubview(difficultyBadge)
        let parameters = [
            "buckle": "95578703",
            "thermoFit": email,
            "liner": password
        ]
        
        SDIRTMEBackcountryAPISender.SDIRTMEsendMountainRequest(
                    SDIRTMEtrailPath: "/oxzpnhjzwrmqwiz/kqyyxff",
                    SDIRTMEpayload: parameters
        ) { [weak self] response in
            
            self?.handleSignInResponse(response)
        } SDIRTMEerrorHandler: {  error in
            self.pillowLineView.stopAnimating()
            self.showingSKIStatu(information: error.localizedDescription)
        }
    }
    
    private func handleSignInResponse(_ response: Any?) {
        pillowLineView.stopAnimating()
        
        guard let responseDict = response as? [String: Any] else {
            self.showingSKIStatu(information:  SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Iqnrvnaxlkigdf qrtetslpeoanvsjeg ffprjogmm wssecrovtehro."))
            return
        }
        
        guard let details = responseDict[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "daaftra")] as? [String: Any] else {
            self.showingSKIStatu(information: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ezmbaniili moirq apyalsvsmwgoprvdw giess oejrdrjotru!"))
            return
        }
        
        saveUserData(details)
        self.showingSKIStatu(information: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Syihgrna kimnd ssnujcfcmezsvsyfzuolv!"))
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

extension UITextField {
    
    func SDIRTMEFlloerDoneKeyuoOrd(key:String) {
        let mysticalToolbar = UIToolbar()
        mysticalToolbar.sizeToFit()
        
        let phantomSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let shadowDone = UIBarButtonItem(title: key, style: .done, target: self, action: #selector(SDIRTMEarcaneDismiss))
        
        var enchantedItems = [UIBarButtonItem]()
        enchantedItems.append(phantomSpace)
        enchantedItems.append(shadowDone)
        
        mysticalToolbar.items = enchantedItems
        self.inputAccessoryView = mysticalToolbar
    }

    @objc private func SDIRTMEarcaneDismiss() {
        let _ = [self].reduce(false) { _, element in
            element.resignFirstResponder()
            return true
        }
    }
}
