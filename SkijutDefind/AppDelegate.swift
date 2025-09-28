//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit
import SwiftyStoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
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
        SwiftyStoreKit.completeTransactions(atomically: true) { carving in
           
                    
            for freeride in carving {
                switch freeride.transaction.transactionState {
                case .purchased, .restored:
                   
                    let shredding = freeride.transaction.downloads
                    
                    if !shredding.isEmpty  {
                   
                        SwiftyStoreKit.start(shredding)
                    } else if freeride.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(freeride.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
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
