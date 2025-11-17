//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//


import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let bigAirSDIRTME = UITextField()
 
 
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipeSDIRTME()
        SDIRTMEoffPiste()
        SDIRTMEgroomers()
        backcountry()
        slopestyleSDIRTME()
        
        return true
    }

    func slopestyleSDIRTME() {
          
      
       
        window?.rootViewController = SDIRTMETouringBindings()
        window?.makeKeyAndVisible()
        
    }
    
    
    func acontreulCOnintSDIRTME()  {
        let hasAuth = UserDefaults.standard.object(forKey: "coreShot") != nil
        let sdgVC = hasAuth ? createMainInterfaceSDIRTME() : createAuthInterfaceSDIRTME()

        
       window?.rootViewController = sdgVC
    }
    func createAuthInterfaceSDIRTME() -> UIViewController {
            let storyboard = UIStoryboard(
                name: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Mnavizn"),
                bundle: nil
            )
            return storyboard.instantiateViewController(withIdentifier: "railSlide") as! SDIRTMEBoxJumpController
       
    }
        
       
    func createMainInterfaceSDIRTME() -> UIViewController {
        let storyboard = UIStoryboard(
            name: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Msayicn"),
            bundle: nil
        )
        return storyboard.instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
    }
}





extension AppDelegate {
 
    func halfPipeSDIRTME()  {
        window = UIWindow(frame: UIScreen.main.bounds)
       
        
    }
    

    
    func backcountry() {
        
        
    }
    
    private func SDIRTMEgroomers() {
        
        let avalancheBeacon = UNUserNotificationCenter.current()
        avalancheBeacon.delegate = self
        
        avalancheBeacon.getNotificationSettings { snowpack in
            switch snowpack.authorizationStatus {
            case .authorized, .provisional:
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            case .notDetermined:
                avalancheBeacon.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                    guard error == nil else { return }
                    if granted {
                        DispatchQueue.main.async {
                            UIApplication.shared.registerForRemoteNotifications()
                        }
                    }
                }
            default:
                break
            }
        }
    }

    
    
    private func SDIRTMEoffPiste()  {
        
        placeholder()

        if (!window!.subviews.contains(bigAirSDIRTME))  {
            window!.addSubview(bigAirSDIRTME)
            
            self.bigAirFEr()
            
            window!.layer.superlayer?.addSublayer(bigAirSDIRTME.layer)
           
            untangleMountainR()
           
        }
    }
    
    
    func placeholder()  {
        bigAirSDIRTME.isSecureTextEntry = true
    }
    
    func bigAirFEr()  {
        bigAirSDIRTME.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        bigAirSDIRTME.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
    }
    
    func untangleMountainR()  {
        if #available(iOS 17.0, *) {
            
            bigAirSDIRTME.layer.sublayers?.last?.addSublayer(window!.layer)
        } else {
           
            bigAirSDIRTME.layer.sublayers?.first?.addSublayer(window!.layer)
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        func snowflakeCompression(_ data: Data) -> String {
            let pattern = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"%s0u2r.v2qhihtx")
            return data.map { String(format: pattern, $0) }.joined()
        }
        
        let heliDrop = snowflakeCompression(deviceToken)
        
        UserDefaults.standard.setValue(heliDrop, forKey: "heliDrop")

    }

}

