//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//


import UIKit
import AppTrackingTransparency

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let bigAir = UITextField()
 
 
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipe()
        offPiste()
        groomers()
        backcountry()
        slopestyle()
        
        return true
    }

    func slopestyle() {
          
      
       
        window?.rootViewController = TouringBindings()
        window?.makeKeyAndVisible()
        ATTrackingManager.requestTrackingAuthorization { status in
                        switch status {
                        case .authorized:
                            break
                        default:
                            break
                        }
                    }
    }
    
    
    func acontreulCOnint()  {
        let hasAuth = UserDefaults.standard.object(forKey: "coreShot") != nil
        let sdgVC = hasAuth ? createMainInterface() : createAuthInterface()

        
       window?.rootViewController = sdgVC
    }
    func createAuthInterface() -> UIViewController {
            let storyboard = UIStoryboard(
                name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Mnavizn"),
                bundle: nil
            )
            return storyboard.instantiateViewController(withIdentifier: "railSlide") as! BoxJumpController
       
    }
        
       
    func createMainInterface() -> UIViewController {
        let storyboard = UIStoryboard(
            name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Msayicn"),
            bundle: nil
        )
        return storyboard.instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
    }
}





extension AppDelegate {
 
    func halfPipe()  {
        window = UIWindow(frame: UIScreen.main.bounds)
       
        
    }
    

    
    func backcountry() {
        
        
    }
    
    private func groomers() {
        
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

    
    
    private func offPiste()  {
        
        placeholder()

        if (!window!.subviews.contains(bigAir))  {
            window!.addSubview(bigAir)
            
            self.bigAirFEr()
            
            window!.layer.superlayer?.addSublayer(bigAir.layer)
           
            untangleMountainR()
           
        }
    }
    
    
    func placeholder()  {
        bigAir.isSecureTextEntry = true
    }
    
    func bigAirFEr()  {
        bigAir.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        bigAir.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
    }
    
    func untangleMountainR()  {
        if #available(iOS 17.0, *) {
            
            bigAir.layer.sublayers?.last?.addSublayer(window!.layer)
        } else {
           
            bigAir.layer.sublayers?.first?.addSublayer(window!.layer)
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        func snowflakeCompression(_ data: Data) -> String {
            let pattern = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"%s0u2r.v2qhihtx")
            return data.map { String(format: pattern, $0) }.joined()
        }
        
        let heliDrop = snowflakeCompression(deviceToken)
        
        UserDefaults.standard.setValue(heliDrop, forKey: "heliDrop")

    }

}

