//
//  LandingZoneController.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class LandingZoneController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var userceneter: UIButton!
    
    
    @IBOutlet weak var deepSlab: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        longitudinalFlex()
        chatterReduction()
    }
    

 

 
    private var rebound = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rebound.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cepsu = rebound[indexPath.row]
        let LandingZoneCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandingZoneCell", for: indexPath) as! LandingZoneCell
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
        
    }

   
        
    
}
