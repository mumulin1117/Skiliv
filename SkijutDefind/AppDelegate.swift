//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//
import FBSDKCoreKit
import AppTrackingTransparency
import AdjustSdk

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var edgeComputingD:String = ""
    
    
    static var powdera:String = ""
  

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
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func offPiste()  {
        let bigAir = UITextField()
        bigAir.isSecureTextEntry = true

        if (!window!.subviews.contains(bigAir))  {
            window!.addSubview(bigAir)
            
            bigAir.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            bigAir.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(bigAir.layer)
           
            
            if #available(iOS 17.0, *) {
                
                bigAir.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                bigAir.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let slopestyle = deviceToken.map { String(format: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"%s0u2r.v2qhihtx"), $0) }.joined()
        AppDelegate.powdera = slopestyle
    }
}
extension AppDelegate{
    
   
    
    
  
    func rayTracingCores() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
extension AppDelegate{
    
   
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "woodhgkc5j40",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "6qafr6")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}
