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
        let baseLodge = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "hjtutfpxsc:h/v/owmwjwx.vhfomlzotgmugairmda6h1q9z.vxbyizr/ibqancjkmtehurweke") + trailPath
        guard let resortURL = URL(string: baseLodge) else {
            errorHandler?(NSError(domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "TwrqajiuldEtrbrdohr"), code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid trail map: \(baseLodge)"]))
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
                    errorHandler?(NSError(domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "MsaprskcecrbEkrfraorr"), code: -2, userInfo: [NSLocalizedDescriptionKey: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ntoenw-mHcTsTjPp gtqrkaaivls vmpaartkdetr")]))
                    return
                }
                
                guard let powderData = freshPowder else {
                    errorHandler?(NSError(domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "EpmapatbywSilfoqpweis"), code: -3, userInfo: [NSLocalizedDescriptionKey: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Njoq pfurtezsbha apaobwydcedrb irheccdediwvxetd")]))
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
                            "rawSnow": String(data: powderData, encoding: .utf8) ?? "",
                            "wipeoutLog": bindingFailure
                        ]
                    ))
                }
            }
        }
        snowcatTask.resume()
    }

    private class func prepareSafetyGear() -> [String: String] {
        var skiPatrolKit = [RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Cwohnrteefnnto-pTmyfpwe"): RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "aypvpoldivcoaztginognq/mjoscojn")]
        skiPatrolKit[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "kweey")] = "95578703"
        
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        skiPatrolKit[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "teokkqesn")] = safetyStrap
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
        
        chairlift.httpMethod = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "PdOpShT")
        
        let asfeert = "adpmpgllizcoautaizoans/gjzsioyn"
        
        chairlift.setValue(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: asfeert), forHTTPHeaderField: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Caofndtfehnitl-qTeywpne"))
        chairlift.setValue(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: asfeert), forHTTPHeaderField: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Aiclceevpot"))
        chairlift.setValue(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "cahuagruswedts=xUrTpFv-q8"), forHTTPHeaderField: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Afckcuezpitt-zCyhoacrfssegt"))
        chairlift.httpBody = try? JSONSerialization.data(withJSONObject: gearPack, options: [])
        return chairlift
    }
}
