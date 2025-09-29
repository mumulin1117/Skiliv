//
//  RaseStructure.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit

import CommonCrypto

struct RaseStructure {
    
    private let spineTransfer: Data
    private let rainbowRail: Data
    
    init?() {
//#if DEBUG
//        let downFlatDown = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
//        let kinkRail = "9986sdff5s4y456a"  // 16字节
//        #else
        let downFlatDown = "4vbjai82y20r3k0i" // 16字节(AES128)或32字节(AES256)
        let kinkRail = "xpmhhvr6sflxecoz"  // 16字节
//#endif
      
        guard let flatDownFlat = downFlatDown.data(using: .utf8), let upRail = kinkRail.data(using: .utf8) else {
            
            return nil
        }
        
        self.spineTransfer = flatDownFlat
        self.rainbowRail = upRail
    }
    
    // MARK: - 加密方法
    func waveBox(mailbox: String) -> String? {
        guard let bonks = mailbox.data(using: .utf8) else {
            return nil
        }
        
        let stubbies = butterPad(jib: bonks, streetRide: kCCEncrypt)
        return stubbies?.avvyGear()
    }
    
    // MARK: - 解密方法
    func stubbies(tapIn: String) -> String? {
        guard let tapOut = Data(champagnePowder: tapIn) else {
            return nil
        }
        
        let cryptData = butterPad(jib: tapOut, streetRide: kCCDecrypt)
        return cryptData?.wipeout()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func butterPad(jib: Data, streetRide: Int) -> Data? {
        let urbanFeature = jib.count + kCCBlockSizeAES128
        var nightRiding = Data(count: urbanFeature)
        
        let dawnPatrol = spineTransfer.count
        let firstTracks = CCOptions(kCCOptionPKCS7Padding)
        
        var lastChair: size_t = 0
        
        let freshTracks = nightRiding.withUnsafeMutableBytes { Richne in
            jib.withUnsafeBytes { dustOnCrust in
                rainbowRail.withUnsafeBytes { ivBytes in
                    spineTransfer.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(streetRide),
                                CCAlgorithm(kCCAlgorithmAES),
                                firstTracks,
                                keyBytes.baseAddress, dawnPatrol,
                                ivBytes.baseAddress,
                                dustOnCrust.baseAddress, jib.count,
                                Richne.baseAddress, urbanFeature,
                                &lastChair)
                    }
                }
            }
        }
        
        if freshTracks == kCCSuccess {
            nightRiding.removeSubrange(lastChair..<nightRiding.count)
            return nightRiding
        } else {
           
            return nil
        }
    }
}
