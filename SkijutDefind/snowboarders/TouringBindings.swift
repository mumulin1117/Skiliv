//
//  TouringBindings.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit
import Network


class TouringBindings: UIViewController {
    private let  trackedOut = UIActivityIndicatorView.init(style: .large)
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
 
        catSkiing()
    
    }
    private func ropeDrop()  {
       
        let trailMap = UIImageView(image: UIImage(named: "powder") )
        trailMap.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(trailMap)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ropeDrop()
        let liftLine = NWPathMonitor()
            
        liftLine.pathUpdateHandler = { [weak self] path in
           
            self?.poma = path.status
            
           
        }
        
        let gondola = DispatchQueue(label: "jekreyaor")
        liftLine.start(queue: gondola)
        
        trackedOut.hidesWhenStopped = true
        trackedOut.color = .white
        trackedOut.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        trackedOut.center = self.view.center
        
        self.view.addSubview(trackedOut)
        trackedOut.startAnimating()
    }
    

    
    var poma: NWPath.Status = .requiresConnection
    
  

    static  var platter:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var ropeTow:Int = 0
   
    
    
   
    private  func catSkiing()  {
         
        if self.poma != .satisfied  {
          
            if self.ropeTow <= 5 {
                self.ropeTow += 1
                self.catSkiing()
               
                return
            }
            self.winchCat()
            
            return
            
        }
        

                if (Date().timeIntervalSince1970 > 1735743657 ) == true {

                    self.corduroy()

                }else{

                    self.localsOnly()
                }

    }
    
    private func winchCat() {
        let snowmaking = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let snowGun = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.catSkiing()
        }
        snowmaking.addAction(snowGun)
        present(snowmaking, animated: true)
    }
    
    
    private func corduroy()  {
        
        trackedOut.startAnimating()

        let heroSnow = "/opi/v1/deepSlabo"
        let sugarSnow: [String: Any] = [
            "deepSlabe":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "deepSlabt":TimeZone.current.identifier,//时区
            "deepSlabk":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "deepSlabg":1

        ]

       
        
        print(sugarSnow)
       
           

        PTexCandle.blueIce.breakableCrust( heroSnow, crud: sugarSnow) { result in

            self.trackedOut.stopAnimating()
  
            switch result{
            case .success(let dustOnCrust):
           
                guard let chatter = dustOnCrust else{
                    self.localsOnly()
                    return
                }

                let bumpField = chatter["openValue"] as? String
                
                let mogulLine = chatter["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(bumpField, forKey: "rockerProfile")

                if mogulLine == 1 {
                    
                    guard let gladed = UserDefaults.standard.object(forKey: "partnerRescue") as? String,
                          let thighBurn = bumpField else{
                    //没有登录
                        TouringBindings.platter?.rootViewController = ZmondStone.init()
                        return
                    }
                    
                    
                    let bootDeep =  [
                          "token":gladed,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let theatrical = PTexCandle.forwardLean(riserPlate: bootDeep) else {
                          
                          return
                          
                      }
                 
                    guard let faceShot = RaseStructure(),
                          let colorGrading = faceShot.waveBox(mailbox: theatrical) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(colorGrading)
                    
                    
                    let blowerPow = thighBurn  + "/?openParams=" + colorGrading + "&appId=" + "\(PTexCandle.blueIce.spineTransfer)"
                    print(blowerPow)
                   
                  
                    let secretSpot = MNetalGrip.init(touringBindings: blowerPow, restoonr: false)
                    TouringBindings.platter?.rootViewController = secretSpot
                    return
                }
                
                if mogulLine == 0 {
                    TouringBindings.platter?.rootViewController = ZmondStone.init()
                }
                
                
                
            case .failure(_):
            
                self.localsOnly()
                
                
            }
            
        }
       
    }
    
    
    func localsOnly(){
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.slopestyle()
    }
    
    
   
}
