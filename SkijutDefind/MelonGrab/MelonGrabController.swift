//
//  MelonGrabController.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class MelonGrabController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    private var sideBevel = Array<Dictionary<String,Any>>()
    private var rebound = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var userceneter: UIButton!
    

    @IBOutlet weak var looseSnow: UICollectionView!
    
    @IBOutlet weak var windSlab: UICollectionView!
    
    @IBAction func sluffSlide(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var terrainTrap: UIPageControl!


    override func viewDidLoad() {
        super.viewDidLoad()

        longitudinalFlex()
        chatterReduction()
        flatCamber()
    }
    

 

 
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.looseSnow {
            return
        }
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
            let MelonGrabCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MelonGrabCell", for: indexPath) as! MelonGrabCell
            return MelonGrabCell
        }
        let cepsu = rebound[indexPath.row]
        let LandingZoneCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TiemiusierCell", for: indexPath) as! TiemiusierCell
        return LandingZoneCell
        
        
    }
    
 
    
    private  lazy var runoutZone: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 20
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        cupCrystal.scrollDirection = .horizontal
        let itemsif = CGSize.init(width: 62, height: 82)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
   
    
    
    func longitudinalFlex()  {
        looseSnow.collectionViewLayout = self.runoutZone
        looseSnow.showsHorizontalScrollIndicator = false
    
        looseSnow.register(UINib.init(nibName: "TiemiusierCell", bundle: nil), forCellWithReuseIdentifier: "TiemiusierCell")
        looseSnow.delegate = self
        looseSnow.dataSource = self
    }
    
    private  lazy var fullRocker: UICollectionViewFlowLayout = {
        let cupCrystal = UICollectionViewFlowLayout.init()
        let miniaCount:CGFloat = 20
        
        cupCrystal.minimumLineSpacing = miniaCount
        cupCrystal.minimumInteritemSpacing = miniaCount
        cupCrystal.scrollDirection = .horizontal
        let itemsif = CGSize.init(width: UIScreen.main.bounds.width - 24, height: windSlab.frame.height)
        cupCrystal.itemSize = itemsif
        return cupCrystal
    }()
   
    
    
    func flatCamber()  {
        windSlab.collectionViewLayout = self.fullRocker
        windSlab.showsHorizontalScrollIndicator = false
        windSlab.isPagingEnabled = true
        windSlab.register(UINib.init(nibName: "MelonGrabCell", bundle: nil), forCellWithReuseIdentifier: "MelonGrabCell")
        windSlab.delegate = self
        windSlab.dataSource = self
    }
    
    
    func chatterReduction()  {
        
    }


}
