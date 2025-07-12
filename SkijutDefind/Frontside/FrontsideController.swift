//
//  FrontsideController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit
import WebKit
extension UIViewController{
    @objc func downFlatDown()  {
      
        navigateTo(ResortBoundController.init(secretSpot: .skiPatrol))
    }
}
extension UIImageView {

    func implementation(skillom urlString: String?) {
        // 先显示占位图或清空当前图片
      
        guard let urlString = urlString,
              let url = URL(string: urlString) else {
            return
        }
        
        // 异步加载图片
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }
    }
}
class FrontsideController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    @IBOutlet weak var sidecountry: WKWebView!
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    private var rebound = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cepsu = rebound[indexPath.row]
        
        let loveidsh = cepsu["forwardLean"] as? Int ?? 0
        
        if cepsu["rainbowRail"] as? Int == -1 {
            
            let castUseridsh = cepsu["riserPlate"] as? Int ?? 0
            
            navigateTo(ResortBoundController.init(secretSpot: .slopeVision,localsOnly:"\(loveidsh)" + RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "&euhsjedrkIldk=") + "\(castUseridsh)"))
            return
        }
        
        significant(loveidsh:loveidsh)
    }
    
    
    
    private func significant(loveidsh:Int)  {
        navigateTo(ResortBoundController.init(secretSpot: .lodgeBase,localsOnly:"\(loveidsh)"))
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cepsu = rebound[indexPath.row]
        let dampening = collectionView.dequeueReusableCell(withReuseIdentifier: "FrontsiderCell", for: indexPath) as! FrontsiderCell
        dampening.blueIce.isHidden = (cepsu["rainbowRail"] as? Int != -1)
        dampening.breakableCrust.implementation(skillom: cepsu["shockPad"] as? String)
        
        dampening.deathCookies.text = cepsu["impactZone"] as? String ?? ""
        
        dampening.snowSnake.addTarget(self, action: #selector(downFlatDown), for: .touchUpInside)
        
        dampening.crud.setTitle(" \(Int.random(in: 0...5))", for: .normal)
        return dampening
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rebound.count
    }
 
    @IBOutlet weak var userceneter: UIButton!
    
    private let iconView = UIImageView()
      
    private let tempLabel = UILabel()
    private let descLabel = UILabel()
 
    
    @IBOutlet weak var hoarFrost: UICollectionView!
    
    private  lazy var runoutZone: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 7
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        
        let itemsif = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 7)/2, height: 228)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        longitudinalFlex()
             
               // Configure icon
               
             
        iconView.tintColor = .label
        iconView.contentMode = .scaleAspectFit
        
        // Configure temp label
        tempLabel.text = "impactZone°C"
        tempLabel.font = .systemFont(ofSize: 16, weight: .medium)
        
        // Configure description label
        descLabel.text = "impactZone"
        descLabel.font = .systemFont(ofSize: 12)
        descLabel.textColor = .secondaryLabel
               
        chatterReduction(jiobetta: 1)
      
        if  let requestURL = URL(string: SnowGunCase.createEvent.shredPath(avalancheBeacon: "") ) {
            sidecountry.load(URLRequest(url: requestURL))
        }
    }

   
    
    
    func longitudinalFlex()  {
        hoarFrost.collectionViewLayout = self.runoutZone
        hoarFrost.showsVerticalScrollIndicator = false
        hoarFrost.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 300, right: 0)
        hoarFrost.register(UINib.init(nibName: "FrontsiderCell", bundle: nil), forCellWithReuseIdentifier: "FrontsiderCell")
        hoarFrost.delegate = self
        hoarFrost.dataSource = self
       
    }
    
    
    func chatterReduction(jiobetta:Int)  {
        pillowLineView.startAnimating()
        let riskView = AvalancheRiskView(riskLevel: .high)
        riskView.translatesAutoresizingMaskIntoConstraints = false
        
        BackcountryAPISender.sendMountainRequest(trailPath: "/ipqmssxrfzqquz/pncgzszzftaqi", payload: ["bindingAngle":"95578703","heelDrag":1,"stanceWidth":10,"duckStance":jiobetta]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            let difficultyBadge = TrailDifficultyBadge(difficulty: ".black")
            difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
            
            guard let detail = response[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "dgaqtpa")] as? Array<[String: Any]> else {
                return
            }
            difficultyBadge.isHidden = true
            self.view.addSubview(difficultyBadge)
            self.rebound = detail
            
            self.hoarFrost.reloadData()
        
        }
    }

    @IBAction func nightRiding(_ sender: UIButton) {
        
        if sender.tag < 50 {
            let abuio = self.view.viewWithTag(12) as? UIButton
            let abuio1 = self.view.viewWithTag(13) as? UIButton
            let abuio2 = self.view.viewWithTag(14) as? UIButton
            
            abuio?.isSelected = false
            abuio1?.isSelected = false
            abuio2?.isSelected = false
            sender.isSelected = true
            
            chatterReduction(jiobetta: sender.tag - 11)
            return
        }
        
        //add
        let backcountry = ResortBoundController.init(secretSpot: .freshTracks)
        self.navigationController?.pushViewController(backcountry, animated: true)
        
    }
}
