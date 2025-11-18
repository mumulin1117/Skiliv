//
//  SDIRTMEBackcountryAPISender.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit


class SDIRTMEBackcountryAPISender {
    
    class func SDIRTMEsendMountainRequest(
                SDIRTMEtrailPath: String,
                SDIRTMEpayload: [String: Any],
                SDIRTMEsuccessHandler: ((Any?) -> Void)?,
        SDIRTMEerrorHandler: ((Error) -> Void)? = nil
    ) {
        // Build base URL
        let baseLodge = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "hjtutfpxsc:h/v/owmwjwx.vhfomlzotgmugairmda6h1q9z.vxbyizr/ibqancjkmtehurweke")
        
        let fullPath = baseLodge +         SDIRTMEtrailPath
        guard let resortURL = URL(string: fullPath) else {
            SDIRTMEerrorHandler?(NSError(domain: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "TwrqajiuldEtrbrdohr"), code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid trail map: \(baseLodge)"]))
            return
        }
        
        // Prepare request
        var chairliftRequest = SDIRTMEprepareGondolaRequest(
            SDIRTMEmountainStation: resortURL,
            SDIRTMEgearPack:         SDIRTMEpayload
        )
        addRequiredHeaders(to: &chairliftRequest)
               
               // 3. Execute request
              
        executeSDIRTMENetworkTask(
            SDIRTMErequest: chairliftRequest,
            SDIRTMEsuccess:         SDIRTMEsuccessHandler,
            SDIRTMEfailure: SDIRTMEerrorHandler
        )

    }

    private class func prepareSafetyGear() -> [String: String] {
        var skiPatrolKit = [SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Cwohnrteefnnto-pTmyfpwe"): SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "aypvpoldivcoaztginognq/mjoscojn")]
        skiPatrolKit[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "kweey")] = "95578703"
        
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        skiPatrolKit[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "teokkqesn")] = safetyStrap
        return skiPatrolKit
    }
    private class func addRequiredHeaders(to request: inout URLRequest) {
        let headers = SDIRTMEeRequestHeaders()
        headers.forEach { key, value in
            request.setValue(value, forHTTPHeaderField: key)
        }
        
    }
    private class func SDIRTMEprepareGondolaRequest(
        SDIRTMEmountainStation: URL,
        SDIRTMEgearPack: [String: Any]
    ) -> URLRequest {
        var chairlift = URLRequest(
            url: SDIRTMEmountainStation,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
        chairlift.httpMethod = SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "PdOpShT")
        
        let asfeert = "adpmpgllizcoautaizoans/gjzsioyn"
        
        chairlift.setValue(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: asfeert), forHTTPHeaderField: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Caofndtfehnitl-qTeywpne"))
        chairlift.setValue(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: asfeert), forHTTPHeaderField: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Aiclceevpot"))
        chairlift.setValue(SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "cahuagruswedts=xUrTpFv-q8"), forHTTPHeaderField: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Afckcuezpitt-zCyhoacrfssegt"))
        chairlift.httpBody = try? JSONSerialization.data(withJSONObject: SDIRTMEgearPack, options: [])
        return chairlift
    }
    
    private class func SDIRTMEeRequestHeaders() -> [String: String] {
           var SDIRTMEheaders = [
               SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Cwohnrteefnnto-pTmyfpwe"):
               SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "aypvpoldivcoaztginognq/mjoscojn")
           ]
           
           SDIRTMEheaders[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "kweey")] = "95578703"
           
           if let SDIRTMEauthToken = UserDefaults.standard.string(forKey: "coreShot") {
               SDIRTMEheaders[SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "teokkqesn")] = SDIRTMEauthToken
           }
           
           return SDIRTMEheaders
       }
    
    
    private class func executeSDIRTMENetworkTask(
           SDIRTMErequest: URLRequest,
           SDIRTMEsuccess: ((Any?) -> Void)?,
           SDIRTMEfailure: ((Error) -> Void)?
       ) {
           let SDIRTMEconfig = URLSessionConfiguration.default
           SDIRTMEconfig.timeoutIntervalForRequest = 30
           SDIRTMEconfig.timeoutIntervalForResource = 60
           
           let sessionSDIRTME = URLSession(configuration: SDIRTMEconfig)
           
           let SDIRTMEtask = sessionSDIRTME.dataTask(with: SDIRTMErequest) { data, response, error in
               DispatchQueue.main.async {
                   SDIRTMEhandleResponse(
                               SDIRTMEdata: data,
                               SDIRTMEresponse: response,
                       SDIRTMEerror: error,
                       SDIRTMEsuccess: SDIRTMEsuccess,
                       SDIRTMEfailure: SDIRTMEfailure
                   )
               }
           }
           
           SDIRTMEtask.resume()
       }
    
    
    
    private class func SDIRTMEhandleResponse(
                   SDIRTMEdata: Data?,
                   SDIRTMEresponse: URLResponse?,
           SDIRTMEerror: Error?,
           SDIRTMEsuccess: ((Any?) -> Void)?,
           SDIRTMEfailure: ((Error) -> Void)?
       ) {
           if let error = SDIRTMEerror {
               SDIRTMEfailure?(error)
               return
           }
           
           guard let httpResponse =         SDIRTMEresponse as? HTTPURLResponse else {
               let error = NSError(
                   domain: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "MsaprskcecrbEkrfraorr"),
                   code: -2,
                   userInfo: [NSLocalizedDescriptionKey: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Ntoenw-mHcTsTjPp gtqrkaaivls vmpaartkdetr")]
               )
               SDIRTMEfailure?(error)
               return
           }
           
           guard let SDIRTMEresponseData =         SDIRTMEdata else {
               let error = NSError(
                   domain: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "EpmapatbywSilfoqpweis"),
                   code: -3,
                   userInfo: [NSLocalizedDescriptionKey: SDIRTMERailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Njoq pfurtezsbha apaobwydcedrb irheccdediwvxetd")]
               )
               SDIRTMEfailure?(error)
               return
           }
           
           SDIRTMEparseResponseData(
               data: SDIRTMEresponseData,
               success: SDIRTMEsuccess,
               failure: SDIRTMEfailure
           )
       }
       
       private class func SDIRTMEparseResponseData(
           data: Data,
           success: ((Any?) -> Void)?,
           failure: ((Error) -> Void)?
       ) {
           do {
               let jsonSDIRTMEObject = try JSONSerialization.jsonObject(
                   with: data,
                   options: [.mutableContainers, .allowFragments]
               )
               success?(jsonSDIRTMEObject)
           } catch let SDIRTMEparsingError {
               let error = NSError(
                   domain: "",
                   code: -4,
                   userInfo: [
                       NSLocalizedDescriptionKey: "\(SDIRTMEparsingError.localizedDescription)",
                       "rawData": String(data: data, encoding: .utf8) ?? "",
                       "underlyingError": SDIRTMEparsingError
                   ]
               )
               failure?(error)
           }
       }
}
