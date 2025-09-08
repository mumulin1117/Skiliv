//
//  LandingZoneController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit
import SwiftyStoreKit

class LandingZoneController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var userceneter: UIButton!
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    @IBOutlet weak var deepSlab: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        longitudinalFlex()
        chatterReduction()
    }
    
    
    private var rebound = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let castUseridsh = rebound[indexPath.row]["firstTracks"] as? Int ?? 0
        
        let backcountry =  ResortBoundController.init(secretSpot: .stormReport,localsOnly:"\(castUseridsh)")
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rebound.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cepsu = rebound[indexPath.row]
        let LandingZoneCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandingZoneCell", for: indexPath) as! LandingZoneCell
        
        LandingZoneCell.chalet.implementation(skillom: cepsu["poma"] as? String)
        
        if let aclist = cepsu["heliDrop"] as? Array<Dictionary<String,Any>>,let fui = aclist.first?["snowmaking"] as? String{
            
            LandingZoneCell.lodge.implementation(skillom:fui )
            LandingZoneCell.bootPack.text = "+ \(aclist.count)"
           
        }
        
        
        LandingZoneCell.stompPad.text = String((cepsu["ropeDrop"] as?  String)?.prefix(10) ?? "2025-12-12")//date
        //active date
        
        LandingZoneCell.baseGrind.text = String((cepsu["ropeDrop"] as?  String)?.suffix(8) ?? "10:00:00")
        LandingZoneCell.avctinopent.text = cepsu["lastChair"] as? String
        
        return LandingZoneCell
        
        
    }
    
 
    
    private  lazy var runoutZone: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 20
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        
        let itemsif = CGSize.init(width: (UIScreen.main.bounds.width - 24 ), height: 170)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
   
    
    
    func longitudinalFlex()  {
        deepSlab.collectionViewLayout = self.runoutZone
        deepSlab.showsVerticalScrollIndicator = false
        deepSlab.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 300, right: 0)
        deepSlab.register(UINib.init(nibName: "LandingZoneCell", bundle: nil), forCellWithReuseIdentifier: "LandingZoneCell")
        deepSlab.delegate = self
        deepSlab.dataSource = self
    }
    
    
   

    func chatterReduction()  {
        pillowLineView.startAnimating()
        let riskView = AvalancheRiskView(riskLevel: .high)
        riskView.translatesAutoresizingMaskIntoConstraints = false
        
        BackcountryAPISender.sendMountainRequest(trailPath: "/remshopwlz/hqzlbpwcbro", payload: ["jib":"95578703"]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            
            let difficultyBadge = TrailDifficultyBadge(difficulty: ".black")
            difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
           
            guard let detail = response[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "dfagtja")] as? Array<[String: Any]> else {
                return
            }
                
            self.rebound = detail
            difficultyBadge.isHidden = true
            self.view.addSubview(difficultyBadge)
            self.deepSlab.reloadData()
        
        }
    }
        
    
}
