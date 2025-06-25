//
//  FrontsideController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

extension UIViewController{
    @objc func downFlatDown()  {
        let backcountry = ResortBoundController.init(arpeggiatorPro: .skiPatrol)
        self.navigationController?.pushViewController(backcountry, animated: true)
    }
}
extension UIImageView {

    func loadPowderImage(from urlString: String?) {
        // 先显示占位图或清空当前图片
        self.image = nil
        
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
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    private var rebound = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cepsu = rebound[indexPath.row]
        
        let loveidsh = cepsu["forwardLean"] as? Int ?? 0
        
        if cepsu["rainbowRail"] as? Int == -1 {//视频
            
            let castUseridsh = cepsu["riserPlate"] as? Int ?? 0
            
            let backcountry =  ResortBoundController.init(arpeggiatorPro: .slopeVision,staergia:"\(loveidsh)" + "&userId=" + "\(castUseridsh)")
            self.navigationController?.pushViewController(backcountry, animated: true)
        }else{
           
            let backcountry =  ResortBoundController.init(arpeggiatorPro: .lodgeBase,staergia:"\(loveidsh)")
            self.navigationController?.pushViewController(backcountry, animated: true)
            
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rebound.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cepsu = rebound[indexPath.row]
        let dampening = collectionView.dequeueReusableCell(withReuseIdentifier: "FrontsiderCell", for: indexPath) as! FrontsiderCell
        dampening.blueIce.isHidden = (cepsu["rainbowRail"] as? Int != -1)
        dampening.breakableCrust.loadPowderImage(from: cepsu["shockPad"] as? String)
        
        dampening.deathCookies.text = cepsu["impactZone"] as? String ?? ""
        
        dampening.snowSnake.addTarget(self, action: #selector(downFlatDown), for: .touchUpInside)
        
        dampening.crud.setTitle(" \(Int.random(in: 0...5))", for: .normal)
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
        pillowLineView.startAnimating()
        BackcountryAPISender.sendMountainRequest(trailPath: "/ipqmssxrfzqquz/pncgzszzftaqi", payload: ["bindingAngle":"95578703","heelDrag":1,"stanceWidth":10,"duckStance":jiobetta]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            
            
            guard let detail = response["data"] as? Array<[String: Any]> else {
                return
            }
                
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
        let backcountry = ResortBoundController.init(arpeggiatorPro: .freshTracks)
        self.navigationController?.pushViewController(backcountry, animated: true)
        
    }
}
