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
        let baseLodge = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "hjtutfpxsc:h/v/owmwjwx.vhfomlzotgmugairmda6h1q9z.vxbyizr/ibqancjkmtehurweke")
        
        let fullPath = baseLodge + trailPath
        guard let resortURL = URL(string: fullPath) else {
            errorHandler?(NSError(domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "TwrqajiuldEtrbrdohr"), code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid trail map: \(baseLodge)"]))
            return
        }
        
        // Prepare request
        var chairliftRequest = prepareGondolaRequest(
            mountainStation: resortURL,
            gearPack: payload
        )
        addRequiredHeaders(to: &chairliftRequest)
               
               // 3. Execute request
              
        executeNetworkTask(
            request: chairliftRequest,
            success: successHandler,
            failure: errorHandler
        )

    }

    private class func prepareSafetyGear() -> [String: String] {
        var skiPatrolKit = [RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Cwohnrteefnnto-pTmyfpwe"): RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "aypvpoldivcoaztginognq/mjoscojn")]
        skiPatrolKit[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "kweey")] = "95578703"
        
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        skiPatrolKit[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "teokkqesn")] = safetyStrap
        return skiPatrolKit
    }
    private class func addRequiredHeaders(to request: inout URLRequest) {
        let headers = generateRequestHeaders()
        headers.forEach { key, value in
            request.setValue(value, forHTTPHeaderField: key)
        }
        
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
    
    private class func generateRequestHeaders() -> [String: String] {
           var headers = [
               RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Cwohnrteefnnto-pTmyfpwe"):
               RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "aypvpoldivcoaztginognq/mjoscojn")
           ]
           
           headers[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "kweey")] = "95578703"
           
           if let authToken = UserDefaults.standard.string(forKey: "coreShot") {
               headers[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "teokkqesn")] = authToken
           }
           
           return headers
       }
    
    
    private class func executeNetworkTask(
           request: URLRequest,
           success: ((Any?) -> Void)?,
           failure: ((Error) -> Void)?
       ) {
           let config = URLSessionConfiguration.default
           config.timeoutIntervalForRequest = 30
           config.timeoutIntervalForResource = 60
           
           let session = URLSession(configuration: config)
           
           let task = session.dataTask(with: request) { data, response, error in
               DispatchQueue.main.async {
                   handleResponse(
                       data: data,
                       response: response,
                       error: error,
                       success: success,
                       failure: failure
                   )
               }
           }
           
           task.resume()
       }
    
    
    
    private class func handleResponse(
           data: Data?,
           response: URLResponse?,
           error: Error?,
           success: ((Any?) -> Void)?,
           failure: ((Error) -> Void)?
       ) {
           if let error = error {
               failure?(error)
               return
           }
           
           guard let httpResponse = response as? HTTPURLResponse else {
               let error = NSError(
                   domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "MsaprskcecrbEkrfraorr"),
                   code: -2,
                   userInfo: [NSLocalizedDescriptionKey: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ntoenw-mHcTsTjPp gtqrkaaivls vmpaartkdetr")]
               )
               failure?(error)
               return
           }
           
           guard let responseData = data else {
               let error = NSError(
                   domain: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "EpmapatbywSilfoqpweis"),
                   code: -3,
                   userInfo: [NSLocalizedDescriptionKey: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Njoq pfurtezsbha apaobwydcedrb irheccdediwvxetd")]
               )
               failure?(error)
               return
           }
           
           parseResponseData(
               data: responseData,
               success: success,
               failure: failure
           )
       }
       
       private class func parseResponseData(
           data: Data,
           success: ((Any?) -> Void)?,
           failure: ((Error) -> Void)?
       ) {
           do {
               let jsonObject = try JSONSerialization.jsonObject(
                   with: data,
                   options: [.mutableContainers, .allowFragments]
               )
               success?(jsonObject)
           } catch let parsingError {
               let error = NSError(
                   domain: "",
                   code: -4,
                   userInfo: [
                       NSLocalizedDescriptionKey: "\(parsingError.localizedDescription)",
                       "rawData": String(data: data, encoding: .utf8) ?? "",
                       "underlyingError": parsingError
                   ]
               )
               failure?(error)
           }
       }
}
