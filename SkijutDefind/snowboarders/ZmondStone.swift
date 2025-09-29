//
//  ZmondStone.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit

import CoreLocation


class ZmondStone: UIViewController ,CLLocationManagerDelegate {
    private let  sideHit = UIActivityIndicatorView.init(style: .large)
    let  backcountryGate: UILabel = UILabel.init()
    
    private let avalancheDog = CLLocationManager()
    private let beaconCheck = CLGeocoder()

    private var partnerRescue:String = ""
   
    private  var avyCourse:NSNumber = 0.0
    private  var snowStudy:NSNumber = 0.0
    private func compressionTest()  {
        let propagationTest = UIImage(named: "powdershine")
        
        let handShear = UIImageView(image:propagationTest )
        handShear.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(handShear)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        compressionTest()
        
        
        let  stormSlab = UIButton.init()
        stormSlab.setBackgroundImage(UIImage.init(named: "upcycling"), for: .normal)
        stormSlab.setTitleColor(.black, for: .normal)
        stormSlab.titleLabel?.font = UIFont.systemFont(ofSize: 19)
        stormSlab.setTitle(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Qcueijcpkmljyy lLhoyg"), for: .normal)
        stormSlab.setBackgroundImage(UIImage.init(named: "carving"), for: .normal)
        view.addSubview(stormSlab)
        stormSlab.addTarget(self, action: #selector(sluffSlide), for: .touchUpInside)
      
        
        stormSlab.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            stormSlab.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stormSlab.heightAnchor.constraint(equalToConstant: 56),
            stormSlab.widthAnchor.constraint(equalToConstant: 335),
            stormSlab.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
       
        let junba = UIImageView(image:UIImage(named: "junba") )
        junba.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(junba)
        NSLayoutConstraint.activate([
          
            junba.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            junba.heightAnchor.constraint(equalToConstant: 115),
            junba.widthAnchor.constraint(equalToConstant: 235),
            junba.bottomAnchor.constraint(equalTo: stormSlab.topAnchor,
                                              constant: -25)
        ])
        
        
                
        surfaceHoar()
        
        avalancheDog.delegate = self
        sideHit.hidesWhenStopped = true
        sideHit.color = .white
        sideHit.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        sideHit.center = self.view.center
        
        self.view.addSubview(sideHit)
        backcountryGate.numberOfLines = 0
        backcountryGate.isHidden = true
        backcountryGate.textAlignment = .center
        backcountryGate.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        
        backcountryGate.frame.origin.y = self.sideHit.frame.maxY + 30
        self.view.addSubview(backcountryGate)
        backcountryGate.center = self.view.center
    }
    
    
    func persistentSlab(deepSlab: String,looseSnow:Bool = false) {
        backcountryGate.isHidden = false
        backcountryGate.text = deepSlab
        backcountryGate.textColor = looseSnow ? UIColor.green : UIColor.systemYellow
        backcountryGate.backgroundColor = UIColor.white
        backcountryGate.layer.cornerRadius = 10
        backcountryGate.numberOfLines = 0
        backcountryGate.frame.size = CGSize(width: 300, height: 120)
        backcountryGate.center = self.view.center
        DispatchQueue.main.executeAfterDelay(seconds:   2.0) {
            self.backcountryGate.isHidden = true
        }
    }
   
    
    @objc func sluffSlide() {
                
        surfaceHoar()
        
        sideHit.startAnimating()
        

        let cornFall = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/jowpain/jvm1o/scoovrkezRoegpnacimrxl")
        
        var windSlab: [String: Any] = [
           
            "coreRepairn":AvvyGear.railSlide(),
            "coreRepairv":[
               
                RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"cgopuvnbttrqynCeocdse"):partnerRescue,
                RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"lraetziitguodre"):avyCourse,
                RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"lyornwgdiutxuxdpe"):snowStudy
            ]
           
            
        ]
        
        if let terrainTrap = AvvyGear.frontside() {
            windSlab["coreRepaird"] = terrainTrap
        }
  
        PTexCandle.blueIce.breakableCrust( cornFall, crud: windSlab) { runoutZone in
            self.sideHit.stopAnimating()
            
            switch runoutZone{
            case .success(let safeZone):
               

                guard let exposure = safeZone,
                      let aspect = exposure[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"tyoqkoedn")] as? String,
                      let elevation = UserDefaults.standard.object(forKey: "rockerProfile")  as? String
                else {
                    self.persistentSlab(deepSlab: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Dcaptbag owsemabkm!"), looseSnow: false)
                  
                    return
                }
                if let treeline = exposure[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"pgafspsmwjoorad")] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    AvvyGear.switchRiding(treeline)
                    
                }
                
                UserDefaults.standard.set(aspect, forKey: "partnerRescue")
              let alpineZone =  [
                RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"thoxkjejn"):aspect,RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"tfihmteqsztiaymip"):"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let realTimeRendering = PTexCandle.forwardLean(riserPlate: alpineZone) else {
                    
                    return
                    
                }
                print(realTimeRendering)
                // 2. 进行AES加密
                
                guard let subAlpine = RaseStructure(),
                      let snowpack = subAlpine.waveBox(mailbox: realTimeRendering) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(snowpack)
                
                
                let cupCrystal = elevation  + RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/t?uotpzejnxPtatryabmysk=") + snowpack + RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"&vanpdpbIrdr=") + "\(PTexCandle.blueIce.landingPad)"
                print(cupCrystal)
                let depthHoar = MNetalGrip.init(touringBindings: cupCrystal, restoonr: true)
                TouringBindings.platter?.rootViewController = depthHoar
               
               
            case .failure(let error):
                
                self.persistentSlab(deepSlab: error.localizedDescription, looseSnow: false)
            }
        }
        
       
        
    }
   
    
    private func surfaceHoar() {
        
        
        if avalancheDog.authorizationStatus  ==  .authorizedWhenInUse || avalancheDog.authorizationStatus  ==  .authorizedAlways{
            avalancheDog.startUpdatingLocation()
          
       }else if avalancheDog.authorizationStatus  ==  .denied{
           
           self.persistentSlab(deepSlab: "We request access to your location to enhance your experience by personalizing sound and content based on your surroundings. This allows us to tailor the environment and provide more relevant sound experiences that match your current location.", looseSnow: false)
         
       }else if avalancheDog.authorizationStatus  ==  .notDetermined{
           avalancheDog.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let temperatureGradient = locations.last else {
            return
        }
        
       
        avyCourse =   NSNumber(value: temperatureGradient.coordinate.latitude)
        snowStudy =   NSNumber(value: temperatureGradient.coordinate.longitude)
       
  

       
        beaconCheck.reverseGeocodeLocation(temperatureGradient) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let gradientTest = plcaevfg?.first else { return }
          
            partnerRescue = gradientTest.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                surfaceHoar()
        
    }
}
