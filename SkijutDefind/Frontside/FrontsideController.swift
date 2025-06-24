//
//  FrontsideController.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class FrontsideController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var rebound = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rebound.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cepsu = rebound[indexPath.row]
        let dampening = collectionView.dequeueReusableCell(withReuseIdentifier: "FrontsiderCell", for: indexPath) as! FrontsiderCell
        return dampening
        
        
    }
    
 
    @IBOutlet weak var userceneter: UIButton!
    
    
    
    
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
        chatterReduction(jiobetta: 1)
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
        
        
    }
}
