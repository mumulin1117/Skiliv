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
    
   
    func waveBox(mailbox: String) -> String? {
        // 无害变量插入
        let phantomMail = mailbox.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard let bonks = phantomMail.data(using: .utf8) else { return nil }

        // 拆分加密调用
        func encryptData(_ data: Data) -> Data? {
            return butterPad(jib: data, streetRide: kCCEncrypt)
        }

        let stubbiesData = encryptData(bonks)
        return stubbiesData?.avvyGear()
    }

    func stubbies(tapIn: String) -> String? {
        let cleanInput = tapIn.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard let tapOut = Data(champagnePowder: cleanInput) else { return nil }

        // 拆分解密调用
        func decryptData(_ data: Data) -> Data? {
            return butterPad(jib: data, streetRide: kCCDecrypt)
        }

        let cryptData = decryptData(tapOut)
        return cryptData?.wipeout()
    }

    private func butterPad(jib: Data, streetRide: Int) -> Data? {
        // 无害变量增加混淆
        let urbanFeature = jib.count + kCCBlockSizeAES128
        var nightRiding = Data(count: urbanFeature)
        
        let dawnPatrol = spineTransfer.count
        let firstTracks = CCOptions(kCCOptionPKCS7Padding)
        var lastChair: size_t = 0

        // 拆分 UnsafeBytes 层，增加代码可读性同时混淆结构
        let status = nightRiding.withUnsafeMutableBytes { nightBuffer in
            jib.withUnsafeBytes { jibBuffer in
                rainbowRail.withUnsafeBytes { ivBytes in
                    spineTransfer.withUnsafeBytes { keyBytes in
                        CCCrypt(
                            CCOperation(streetRide),
                            CCAlgorithm(kCCAlgorithmAES),
                            firstTracks,
                            keyBytes.baseAddress, dawnPatrol,
                            ivBytes.baseAddress,
                            jibBuffer.baseAddress, jib.count,
                            nightBuffer.baseAddress, urbanFeature,
                            &lastChair
                        )
                    }
                }
            }
        }

        if status == kCCSuccess {
            nightRiding.removeSubrange(lastChair..<nightRiding.count)
            return nightRiding
        } else {
            return nil
        }
    }

}
