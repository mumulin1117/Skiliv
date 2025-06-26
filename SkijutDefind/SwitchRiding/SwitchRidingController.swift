//
//  SwitchRidingController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SwitchRidingController: UIViewController {
    private let iconView = UIImageView()
      
    @IBOutlet weak var zendhaiGromw: UIScrollView!
    
    
    private let tempLabel = UILabel()
    private let descLabel = UILabel()
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
        contetnviewSki.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contetnviewSki.leadingAnchor.constraint(equalTo: zendhaiGromw.leadingAnchor),
            contetnviewSki.trailingAnchor.constraint(equalTo: zendhaiGromw.trailingAnchor),
            contetnviewSki.topAnchor.constraint(equalTo: zendhaiGromw.topAnchor),
            contetnviewSki.bottomAnchor.constraint(equalTo: zendhaiGromw.bottomAnchor),
            contetnviewSki.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            contetnviewSki.heightAnchor.constraint(equalToConstant: 800)
        ])
        

        iconView.tintColor = .label
        iconView.contentMode = .scaleAspectFit
        
        // Configure temp label
        tempLabel.text = "impactZone°C"
        tempLabel.font = .systemFont(ofSize: 16, weight: .medium)
        
        // Configure description label
        descLabel.text = "impactZone"
        descLabel.font = .systemFont(ofSize: 12)
        descLabel.textColor = .secondaryLabel
        duckStance.zipperLine(lwgber: 11)
        HISghyr.zipperLine(lwgber: 11)
    }
    
    @IBAction func tapIn(_ sender: UIButton) {
        
        navigateTo(ResortBoundController.init(secretSpot: .waxProfile))
    }
    

    @IBAction func freshTracks(_ sender: UIButton) {
     
        navigateTo(ResortBoundController.init(secretSpot: .snowCats))
    }
    
    
    @IBAction func catSkiing(_ sender: UIButton) {
        
        navigateTo(ResortBoundController.init(secretSpot: .trackedRuns))
       
    }
    
    
    @IBAction func partnerRescue(_ sender: Any) {
      
        navigateTo(ResortBoundController.init(secretSpot: .riderProfile))
        
    }
    
    @IBAction func baseMaterial(_ sender: UIButton) {
        let destination = destinationController(for: sender.tag)
            navigateTo(destination)
        
        
    }
    
    private func destinationController(for tag: Int) -> ResortBoundController {
        switch tag {
        case 34: return ResortBoundController(secretSpot: .backcountryZones)
        case 35: return ResortBoundController(secretSpot: .gearLocker)
        case 36: return ResortBoundController(secretSpot: .liftTickets)
        case 37: return ResortBoundController(secretSpot: .lastRuns)
        case 38: return ResortBoundController(secretSpot: .bindingSetup)
        default: return ResortBoundController(secretSpot: .myVert)
        }
    }
   
    
    func flexPattern()  {
        stubbies.text = UserDefaults.standard.object(forKey: "fallLine") as? String ?? "NUll"
        bonks.backgroundImage(for: .normal)
        
        let difficultyBadge = TrailDifficultyBadge(difficulty: ".black")
        difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
       
        guard let urlString = UserDefaults.standard.object(forKey: "zipperLine") as? String ,
              let url = URL(string: urlString) else {
            return
        }
        
        difficultyBadge.isHidden = true
        self.view.addSubview(difficultyBadge)
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


extension UIViewController{
    func navigateTo(_ controller: ResortBoundController) {
       navigationController?.pushViewController(controller, animated: true)
   }
}
