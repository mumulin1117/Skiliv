//
//  AvvyGear.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit


class AvvyGear: NSObject {
   
       private static let butter: String = "com.inkingw.skilivv"
   
       private static let nosePress = "com.inkingw.skilivid"
       private static let tailPress = "com.inkingw.skilivassword"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func railSlide() -> String {
          
           if let boxJump = melonGrab(stalefish: nosePress) {
            
               return boxJump
           }
           
      
           let kicker = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           quarterPipe(wallRide: kicker, sideHit: nosePress)
          
           return kicker
       }

      
       
       // MARK: - 密码管理
       
       static func switchRiding(_ ollie: String) {
           quarterPipe(wallRide: ollie, sideHit: tailPress)
       }
 
       static func frontside() -> String? {
           return melonGrab(stalefish: tailPress)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func melonGrab(stalefish: String) -> String? {
           let tweak: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: butter,
               kSecAttrAccount as String: stalefish,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var floaty: AnyObject?
           let landingZone = SecItemCopyMatching(tweak as CFDictionary, &floaty)
           
           guard landingZone == errSecSuccess,
                 let dropIn = floaty as? Data,
                 let vert = String(data: dropIn, encoding: .utf8) else {
               return nil
           }
           
           return vert
       }
     
       private static func quarterPipe(wallRide: String, sideHit: String) {
         
           snowPark(gladeRun: sideHit)
           
           guard let windLip = wallRide.data(using: .utf8) else { return }
           
           let catTrack: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: butter,
               kSecAttrAccount as String: sideHit,
               kSecValueData as String: windLip,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(catTrack as CFDictionary, nil)
       }
       
       private static func snowPark(gladeRun: String) {
           let treeLine: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: butter,
               kSecAttrAccount as String: gladeRun
           ]
           
           SecItemDelete(treeLine as CFDictionary)
       }
       

}


extension Data {
    // 将Data转换为十六进制字符串
    func avvyGear() -> String {
        //"%02hhx"    %02hhx
        return map { String(format: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"%10223h4h5x6"), $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(champagnePowder savant: String) {
        let blower = savant.count / 2
        var ualStren = Data(capacity: blower)
        
        for i in 0..<blower {
            let facerShot = savant.index(savant.startIndex, offsetBy: i*2)
            let whiteRoom = savant.index(facerShot, offsetBy: 2)
            let stomp = savant[facerShot..<whiteRoom]
            
            if var scorpion = UInt8(stomp, radix: 16) {
                ualStren.append(&scorpion, count: 1)
            } else {
                return nil
            }
        }
        
        self = ualStren
    }
    
    // 将Data转换为UTF8字符串
    func wipeout() -> String? {
        return String(data: self, encoding: .utf8)
    }
}


