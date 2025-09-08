//
//  ZmondStone.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit

import CoreLocation


class ZmondStone: UIViewController ,CLLocationManagerDelegate {
    private let  pillowLineView = UIActivityIndicatorView.init(style: .large)
    let  statuYamisLabel: UILabel = UILabel.init()
    
    private let augmentedReality = CLLocationManager()
    private let realTimeRendering = CLGeocoder()

    private var canvasLayer:String = ""
   
    private  var strokeEngine:NSNumber = 0.0
    private  var colorTheory:NSNumber = 0.0
    private func artisticFilter()  {
        let creativeProcess = UIImage(named: "powder")
        
        let visualDesign = UIImageView(image:creativeProcess )
        visualDesign.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(visualDesign)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artisticFilter()
        
        
        let  artGeneration = UIButton.init()
        artGeneration.setBackgroundImage(UIImage.init(named: "upcycling"), for: .normal)
        artGeneration.setTitleColor(.black, for: .normal)
        artGeneration.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        artGeneration.setTitle("Quickly Log", for: .normal)
        artGeneration.setBackgroundImage(UIImage.init(named: "carving"), for: .normal)
        view.addSubview(artGeneration)
        artGeneration.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        artGeneration.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            artGeneration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            artGeneration.heightAnchor.constraint(equalToConstant: 56),
            artGeneration.widthAnchor.constraint(equalToConstant: 335),
            artGeneration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        creativeProcess()
        
        augmentedReality.delegate = self
        pillowLineView.hidesWhenStopped = true
        pillowLineView.color = .white
        pillowLineView.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        pillowLineView.center = self.view.center
        
        self.view.addSubview(pillowLineView)
        statuYamisLabel.numberOfLines = 0
        statuYamisLabel.isHidden = true
        statuYamisLabel.textAlignment = .center
        statuYamisLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        statuYamisLabel.center = self.view.center
        statuYamisLabel.frame.origin.y = self.pillowLineView.frame.maxY + 30
        self.view.addSubview(statuYamisLabel)
    }
    
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        statuYamisLabel.isHidden = false
        statuYamisLabel.text = information
        statuYamisLabel.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        statuYamisLabel.backgroundColor = UIColor.white
        statuYamisLabel.layer.cornerRadius = 10
        statuYamisLabel.numberOfLines = 0
        statuYamisLabel.frame.size = CGSize(width: 300, height: 120)
        DispatchQueue.main.executeAfterDelay(seconds:   2.0) {
            self.statuYamisLabel.isHidden = true
        }
    }
   
    
    @objc func digitalPainting() {
                
        creativeProcess()
        
        pillowLineView.startAnimating()
        

        let creativeExpression = "/opi/v1/coreRepairl"
        
        var artisticStyle: [String: Any] = [
           
            "coreRepairn":AvvyGear.artisticGuide(),
            "coreRepairv":[
               
                "countryCode":canvasLayer,
                "latitude":strokeEngine,
                "longitude":colorTheory
            ]
           
            
        ]
        
        if let visualEffects = AvvyGear.brushInstructor() {
            artisticStyle["coreRepaird"] = visualEffects
        }
  
        PTexCandle.artisticArtisan.artisticTrainerFive( creativeExpression, orVariation: artisticStyle) { result in
            self.pillowLineView.stopAnimating()
            
            switch result{
            case .success(let colorMixing):
               

                guard let brushTexture = colorMixing,
                      let jesterLogic = brushTexture["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "rockerProfile")  as? String
                else {
                    self.showingSKIStatu(information: "Data weak!", isOKAYSHowi: false)
                  
                    return
                }
                if let textureMapping = brushTexture["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    AvvyGear.artisticInstructor(textureMapping)
                    
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "partnerRescue")
              let augmentedReality =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let realTimeRendering = PTexCandle.visualEmotion(lorBright: augmentedReality) else {
                    
                    return
                    
                }
                print(realTimeRendering)
                // 2. 进行AES加密
                
                guard let canvasLayer = RaseStructure(),
                      let strokeEngine = canvasLayer.artisticIdentity(tity: realTimeRendering) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(strokeEngine)
                
                
                let colorTheory = whopperWare  + "/?openParams=" + strokeEngine + "&appId=" + "\(PTexCandle.artisticArtisan.asartisticAuthority)"
                print(colorTheory)
                let artisticFilter = MNetalGrip.init(Trendsetter: colorTheory, Matrix: true)
                TouringBindings.colorMixing?.rootViewController = artisticFilter
               
               
            case .failure(let error):
                
                self.showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
            }
        }
        
       
        
    }
   
    
    private func creativeProcess() {
        
        
        if augmentedReality.authorizationStatus  ==  .authorizedWhenInUse || augmentedReality.authorizationStatus  ==  .authorizedAlways{
            augmentedReality.startUpdatingLocation()
          
       }else if augmentedReality.authorizationStatus  ==  .denied{
           
           self.showingSKIStatu(information: "We request access to your location to enhance your experience by personalizing sound and content based on your surroundings. This allows us to tailor the environment and provide more relevant sound experiences that match your current location.", isOKAYSHowi: false)
         
       }else if augmentedReality.authorizationStatus  ==  .notDetermined{
           augmentedReality.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let artGeneration = locations.last else {
            return
        }
        
       
        strokeEngine =   NSNumber(value: artGeneration.coordinate.latitude)
        colorTheory =   NSNumber(value: artGeneration.coordinate.longitude)
       
  

       
        realTimeRendering.reverseGeocodeLocation(artGeneration) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let digitalPainting = plcaevfg?.first else { return }
          
            canvasLayer = digitalPainting.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                creativeProcess()
        
    }
}
