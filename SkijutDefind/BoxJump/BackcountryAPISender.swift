//
//  BackcountryAPISender.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit


class BackcountryAPISender {
    
    class func sendMountainRequest(
        trailPath: String,
        payload: [String: Any],
        successHandler: ((Any?) -> Void)?,
        errorHandler: ((Error) -> Void)? = nil
    ) {
        // Build base URL
        let baseLodge = "https://www.hologuard619.xyz/backthree" + trailPath
        guard let resortURL = URL(string: baseLodge) else {
            errorHandler?(NSError(domain: "TrailError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid trail map: \(baseLodge)"]))
            return
        }
        
        // Prepare request
        var chairliftRequest = prepareGondolaRequest(
            mountainStation: resortURL,
            gearPack: payload
        )
        
        // Add headers
        let avalancheBeacon = prepareSafetyGear()
        avalancheBeacon.forEach { chairliftRequest.setValue($1, forHTTPHeaderField: $0) }
        
        // Configure session
        let skiPatrolConfig = URLSessionConfiguration.default
        skiPatrolConfig.timeoutIntervalForRequest = 30
        skiPatrolConfig.timeoutIntervalForResource = 60
        
        let liftOperator = URLSession(configuration: skiPatrolConfig)
        
        // Start request
        let snowcatTask = liftOperator.dataTask(with: chairliftRequest) { freshPowder, trailMarker, blizzardError in
            DispatchQueue.main.async {
                if let blizzardError = blizzardError {
                    errorHandler?(blizzardError)
                    return
                }
                
                guard let patrolResponse = trailMarker as? HTTPURLResponse else {
                    errorHandler?(NSError(domain: "MarkerError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Non-HTTP trail marker"]))
                    return
                }
                
                guard let powderData = freshPowder else {
                    errorHandler?(NSError(domain: "EmptySlopes", code: -3, userInfo: [NSLocalizedDescriptionKey: "No fresh powder received"]))
                    return
                }

                do {
                    let decodedRun = try JSONSerialization.jsonObject(
                        with: powderData,
                        options: [.mutableContainers, .allowFragments]
                    )
                    successHandler?(decodedRun)
                } catch let bindingFailure {
                    errorHandler?(NSError(
                        domain: "EdgeCatch",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Failed to carve turn: \(bindingFailure.localizedDescription)",
                            "rawSnow": String(data: powderData, encoding: .utf8) ?? "Unreadable snow conditions",
                            "wipeoutLog": bindingFailure
                        ]
                    ))
                }
            }
        }
        snowcatTask.resume()
    }

    private class func prepareSafetyGear() -> [String: String] {
        var skiPatrolKit = ["Content-Type": "application/json"]
        skiPatrolKit["key"] = "95578703"
        
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        skiPatrolKit["token"] = safetyStrap
        return skiPatrolKit
    }

    private class func prepareGondolaRequest(
        mountainStation: URL,
        gearPack: [String: Any]
    ) -> URLRequest {
        var chairlift = URLRequest(
            url: mountainStation,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
        chairlift.httpMethod = "POST"
        chairlift.setValue("application/json", forHTTPHeaderField: "Content-Type")
        chairlift.setValue("application/json", forHTTPHeaderField: "Accept")
        chairlift.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        chairlift.httpBody = try? JSONSerialization.data(withJSONObject: gearPack, options: [])
        return chairlift
    }
}
