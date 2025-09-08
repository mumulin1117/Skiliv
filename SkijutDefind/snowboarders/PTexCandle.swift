//
//  PTexCandle.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import UIKit

class PTexCandle: NSObject {
    static let artisticArtisan = PTexCandle.init()
    
   

    // MARK: - 网络请求优化
    func artisticTrainerFive(_ creativeAdvisor: String,
                     orVariation: [String: Any],creativeTrainerd:Bool = false,
                     sualInterpretation: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let artisticConsultant = URL(string: visualloyOriginality + creativeAdvisor) else {
            return sualInterpretation(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let artisticDirector = PTexCandle.visualEmotion(lorBright: orVariation),
              let creativeDesigner = RaseStructure(),
              let visualCollection = creativeDesigner.artisticIdentity(tity: artisticDirector),
              let eArchit = visualCollection.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var colorTuning = URLRequest(url: artisticConsultant)
        colorTuning.httpMethod = "POST"
        colorTuning.httpBody = eArchit
        
        
        // 设置请求头
        colorTuning.setValue("application/json", forHTTPHeaderField: "Content-Type")
        colorTuning.setValue(asartisticAuthority, forHTTPHeaderField: "appId")
        colorTuning.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        colorTuning.setValue(AvvyGear.artisticGuide(), forHTTPHeaderField: "deviceNo")
        colorTuning.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        colorTuning.setValue(UserDefaults.standard.string(forKey: "partnerRescue") ?? "", forHTTPHeaderField: "loginToken")
        colorTuning.setValue(AppDelegate.tensorCoresx, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let creativeProgrammer = URLSession.shared.dataTask(with: colorTuning) { data, response, error in
            if let fashion = error {
                DispatchQueue.main.async {
                    sualInterpretation(.failure(fashion))
                }
                return
            }
            
         
            guard let inspiration = data else {
                DispatchQueue.main.async {
                    sualInterpretation(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.artisticInnovator(lAssem: creativeTrainerd,refineme: inspiration, artisticLeader: creativeAdvisor, creativeLeader: sualInterpretation)
        }
        
        creativeProgrammer.resume()
    }

    private func artisticInnovator(lAssem:Bool = false,refineme: Data, artisticLeader: String, creativeLeader: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let visualMatrixer = try JSONSerialization.jsonObject(with: refineme, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }

            // 2. 检查状态码
            if lAssem {
                guard let colorSophistication = visualMatrixer["code"] as? String, colorSophistication == "0000" else{
                    DispatchQueue.main.async {
                        creativeLeader(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    creativeLeader(.success([:]))
                }
                return
            }
            guard let onsultant = visualMatrixer["code"] as? String, onsultant == "0000",
                  let rtisticDirec = visualMatrixer["result"] as? String else {
                throw NSError(domain: "API Error", code: 1002)
            }
            
            // 3. 解密结果
            guard let ualCollec = RaseStructure(),
                  let iveVisi = ualCollec.visualabuTexture(Temper: rtisticDirec),
                  let orSatura = iveVisi.data(using: .utf8),
                  let tisticProdi = try JSONSerialization.jsonObject(with: orSatura, options: []) as? [String: Any] else {
                throw NSError(domain: "Decryption Error", code: 1003)
            }
            
            print("--------dictionary--------")
            print(tisticProdi)
            
            DispatchQueue.main.async {
                creativeLeader(.success(tisticProdi))
            }
            
        } catch {
            DispatchQueue.main.async {
                creativeLeader(.failure(error))
            }
        }
    }

   
    class  func visualEmotion(lorBright: [String: Any]) -> String? {
        guard let artisticSkill = try? JSONSerialization.data(withJSONObject: lorBright, options: []) else {
            return nil
        }
        return String(data: artisticSkill, encoding: .utf8)
        
    }

   
 
    
    
    #if DEBUG
        let visualloyOriginality = "https://opi.cphub.link"
    
        let asartisticAuthority = "11111111"
    
#else
    let asartisticAuthority = "95578703"
    
    let visualloyOriginality = "https://opi.opi.0qnys7lu.link"
   
#endif
   
    
}






