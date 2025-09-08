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
    static var tensorCoresx:String = ""
  

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipe()
        computeShaders()
        instanceSegmentation()
        setupStoreKitCompletion()
        slopestyle()
        
        return true
    }

    func slopestyle() {
          
      
       
        window?.rootViewController = TouringBindings()
        window?.makeKeyAndVisible()
      
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
    

    
    func setupStoreKitCompletion() {
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
                    
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
        }
    
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func computeShaders()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
           
            
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let distributedTraining = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = distributedTraining
    }
}
