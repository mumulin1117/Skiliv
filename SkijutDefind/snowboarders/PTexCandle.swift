//
//  PTexCandle.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit

class PTexCandle: NSObject {
    static let blueIce = PTexCandle.init()
    
   

    // MARK: - 网络请求优化
    func breakableCrust(_ creativeAdvisor: String,
                     crud: [String: Any],deathCookies:Bool = false,
                     snowSnake: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let berm = URL(string: impactZone + creativeAdvisor) else {
            return snowSnake(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let zipperLine = PTexCandle.forwardLean(riserPlate: crud),
              let fallLine = RaseStructure(),
              let apresSki = fallLine.waveBox(mailbox: zipperLine),
              let chalet = apresSki.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var lodge = URLRequest(url: berm)
        lodge.httpMethod = "POST"
        lodge.httpBody = chalet
        
        
        // 设置请求头
        lodge.setValue("application/json", forHTTPHeaderField: "Content-Type")
        lodge.setValue(spineTransfer, forHTTPHeaderField: "appId")
        lodge.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        lodge.setValue(AvvyGear.railSlide(), forHTTPHeaderField: "deviceNo")
        lodge.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        lodge.setValue(UserDefaults.standard.string(forKey: "partnerRescue") ?? "", forHTTPHeaderField: "loginToken")
        lodge.setValue(AppDelegate.powdera, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let bootPack = URLSession.shared.dataTask(with: lodge) { data, response, error in
            if let stompPad = error {
                DispatchQueue.main.async {
                    snowSnake(.failure(stompPad))
                }
                return
            }
            
         
            guard let edgeTune = data else {
                DispatchQueue.main.async {
                    snowSnake(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.waxRoom(baseGrind: deathCookies,coreShot: edgeTune, pTex: creativeAdvisor, thermoFit: snowSnake)
        }
        
        bootPack.resume()
    }

    private func waxRoom(baseGrind:Bool = false,coreShot: Data, pTex: String, thermoFit: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let buckle = try JSONSerialization.jsonObject(with: coreShot, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }

            // 2. 检查状态码
            if baseGrind {
                guard let lacing = buckle["code"] as? String, lacing == "0000" else{
                    DispatchQueue.main.async {
                        thermoFit(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    thermoFit(.success([:]))
                }
                return
            }
            guard let highback = buckle["code"] as? String, highback == "0000",
                  let toeDrag = buckle["result"] as? String else {
                throw NSError(domain: "API Error", code: 1002)
            }
            
            // 3. 解密结果
            guard let heelDrag = RaseStructure(),
                  let stanceWidth = heelDrag.visualabuTexture(Temper: toeDrag),
                  let bindingAngle = stanceWidth.data(using: .utf8),
                  let duckStance = try JSONSerialization.jsonObject(with: bindingAngle, options: []) as? [String: Any] else {
                throw NSError(domain: "Decryption Error", code: 1003)
            }
            
            print("--------dictionary--------")
            print(duckStance)
            
            DispatchQueue.main.async {
                thermoFit(.success(duckStance))
            }
            
        } catch {
            DispatchQueue.main.async {
                thermoFit(.failure(error))
            }
        }
    }

   
    class  func forwardLean(riserPlate: [String: Any]) -> String? {
        guard let shockPad = try? JSONSerialization.data(withJSONObject: riserPlate, options: []) else {
            return nil
        }
        return String(data: shockPad, encoding: .utf8)
        
    }

   
 
    
    
    #if DEBUG
        let impactZone = "https://opi.cphub.link"
    
        let spineTransfer = "11111111"
    
#else
    let spineTransfer = "95578703"
    
    let impactZone = "https://opi.opi.0qnys7lu.link"
   
#endif
   
    
}






