//
//  AppDelegate.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        halfPipe()
        slopestyle()
        window?.makeKeyAndVisible()
        return true
    }


}



extension AppDelegate {
 
    func halfPipe()  {
        window = UIWindow(frame: UIScreen.main.bounds)
       
       
    }
    
    func slopestyle()  {
        if UserDefaults.standard.object(forKey: "butter") == nil {
            window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "railSlide") as! BoxJumpController
            return
        }
        
        
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dropIn") as! UINavigationController
    }
}

