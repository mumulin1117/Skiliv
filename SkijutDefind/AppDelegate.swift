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


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipe()
        slopestyle()
        
        return true
    }


}



extension AppDelegate {
 
    func halfPipe()  {
        window = UIWindow(frame: UIScreen.main.bounds)
       
        SwiftyStoreKit.completeTransactions(atomically: true) { results in
        }
    }
    
    func slopestyle()  {
        if UserDefaults.standard.object(forKey: "coreShot") == nil {
            window?.rootViewController = UIStoryboard(name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Mnavizn"), bundle: nil).instantiateViewController(withIdentifier: "railSlide") as! BoxJumpController
            window?.makeKeyAndVisible()
            return
        }
        
        
        window?.rootViewController = UIStoryboard(name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Msayicn"), bundle: nil).instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
        window?.makeKeyAndVisible()
    }
}

