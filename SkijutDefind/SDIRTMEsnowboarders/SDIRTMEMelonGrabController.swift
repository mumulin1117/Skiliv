//
//  SDIRTMEMelonGrabController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class SDIRTMEMelonGrabController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    private var sideBevel = Array<Dictionary<String,Any>>()
    private var rebound = Array<Dictionary<String,Any>>()
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    @IBOutlet weak var userceneter: UIButton!
    
    @IBOutlet weak var SDIRTMEtimeing: UILabel!
    
    
    @IBOutlet weak var looseSnow: UICollectionView!
    
    @IBOutlet weak var windSlab: UICollectionView!
    
    @IBAction func sluffSlide(_ sender: UIButton) {
        
        let backcountry = DIRTMEResortBoundController.init(secretSpot: .freshLine)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
    
    
    @IBOutlet weak var terrainTrap: UIPageControl!


    override func viewDidLoad() {
        super.viewDidLoad()
        SDIRTMEtimeing.text =  SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Thivmdexs")
        longitudinalFlexSDIRTME()
        
        flatCamberSDIRTME()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        chatterReductionSDIRTME()
    }
 

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.x
        let width = scrollView.frame.width
        let pageIndex = Int(offset / width)
        self.terrainTrap.currentPage = pageIndex

    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.looseSnow {
          
            navigateTo(DIRTMEResortBoundController.init(secretSpot: .vertView,localsOnly: "\(sideBevel[indexPath.row]["backcountry"] ?? "")"))
            return
        }
        
        navigateTo(DIRTMEResortBoundController.init(secretSpot: .carveDetails,localsOnly: "\(rebound[indexPath.row]["floaty"] ?? "")"))
      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.looseSnow {
            return sideBevel.count
        }
        return rebound.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.looseSnow {
            let cepsu = sideBevel[indexPath.row]
            let TiemiusierCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SDIRTMETiemiusierCell", for: indexPath) as! SDIRTMETiemiusierCell
            TiemiusierCell.heelDrag.SDIRTMEimplementation(SDIRTMEskillom: cepsu["carving"] as? String)
            TiemiusierCell.duckStance.text = cepsu["freeride"] as? String
            
            return TiemiusierCell
        }
        let cepsu = rebound[indexPath.row]
        let MelonGrabCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SDIRTMEMelonGrabCell", for: indexPath) as! SDIRTMEMelonGrabCell
        MelonGrabCell.toeDrag.SDIRTMEimplementation(SDIRTMEskillom: (cepsu["beacon"] as? Array<String> )?.first)
        MelonGrabCell.coreShot.text = "@" +  (cepsu["quarterPipe"] as? String ?? "No name")
        
        MelonGrabCell.thermoFit.text = cepsu["dropIn"] as? String
        MelonGrabCell.buckle.addTarget(self, action: #selector(SDIRTMEdownFlatDown), for: .touchUpInside)
        return MelonGrabCell
        
        
    }
    
 
    
    private  lazy var runoutZoneSDIRTME: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 20
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        cupCrystal.scrollDirection = .horizontal
        let itemsif = CGSize.init(width: 62, height: 82)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
   
    
    
    func longitudinalFlexSDIRTME()  {
        looseSnow.collectionViewLayout = self.runoutZoneSDIRTME
        looseSnow.showsHorizontalScrollIndicator = false
    
        looseSnow.register(UINib.init(nibName: "SDIRTMETiemiusierCell", bundle: nil), forCellWithReuseIdentifier: "SDIRTMETiemiusierCell")
        looseSnow.delegate = self
        looseSnow.dataSource = self
    }
    
    private  lazy var fullRockerSDIRTME: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 0
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        cupCrystal.scrollDirection = .horizontal
        let itemsif = CGSize.init(width: UIScreen.main.bounds.width, height: windSlab.frame.height)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        fullRockerSDIRTME.itemSize = CGSize.init(width: UIScreen.main.bounds.width, height: windSlab.frame.height)
    }
    
    func flatCamberSDIRTME()  {
        windSlab.collectionViewLayout = self.fullRockerSDIRTME
        windSlab.showsHorizontalScrollIndicator = false
        windSlab.isPagingEnabled = true
        windSlab.register(UINib.init(nibName: "SDIRTMEMelonGrabCell", bundle: nil), forCellWithReuseIdentifier: "SDIRTMEMelonGrabCell")
        windSlab.delegate = self
        windSlab.dataSource = self
        windSlab.contentInset = UIEdgeInsets(top: 0, left:0, bottom: 0, right: 0)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    private func chatterReductionSDIRTME()  {
        let riskView = SDIRTMEAvalancheRiskView(riskLevel: .high)
        riskView.translatesAutoresizingMaskIntoConstraints = false
        
        pillowLineView.startAnimating()
        SDIRTMEBackcountryAPISender.SDIRTMEsendMountainRequest(        SDIRTMEtrailPath: "/fjzjundcz/atlua",         SDIRTMEpayload: ["powder":"95578703"]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            
            riskView.isHidden = true
            self.view.addSubview(riskView)
            guard let detail = response["data"] as? Array<[String: Any]> else {
                return
            }
                
            self.sideBevel = detail
            
            self.looseSnow.reloadData()
        
        }
        
        
        SDIRTMEBackcountryAPISender.SDIRTMEsendMountainRequest(        SDIRTMEtrailPath: "/lifkvnmrlkkrcz/bmzzzt",         SDIRTMEpayload: ["rodeo":"95578703","melonGrab":20]) {zipperLine in
            
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            
            let difficultyBadge = SDIRTMETrailDifficultyBadge(difficulty: ".black")
            difficultyBadge.translatesAutoresizingMaskIntoConstraints = false
           
            guard let detail = response[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "dbartoa")] as? Array<[String: Any]> else {
                return
            }
                
            self.rebound = detail
            
            self.terrainTrap.numberOfPages = self.rebound.count
            self.windSlab.reloadData()
            
            
        }
    }


}
