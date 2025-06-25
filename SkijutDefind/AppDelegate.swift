//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipe()
        setupStoreKitCompletion()
        slopestyle()
        
        return true
    }

    func slopestyle() {
          
        let hasAuth = UserDefaults.standard.object(forKey: "coreShot") != nil
        let sdgVC = hasAuth ? createMainInterface() : createAuthInterface()
       
        window?.rootViewController = sdgVC
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





