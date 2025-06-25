//
//  SnowGunCase.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit


enum SnowGunCase: String {
    case freshTracks = "pages/CreateRoom/index?"

        case lodgeBase = "pages/LiveRoomRest/index?liveId="
        case slopeVision = "pages/LiveRoomVideo/index?liveId="
        case avalancheWhisper = "pages/privateChat/index?userId="
        case riderProfile = "pages/MineCenter/index?"
        case snowCats = "pages/AttentionMy/index?"
        case trackedRuns = "pages/Concerned/index?"
        case mogulPosts = "pages/MyPost/index?"
        case carveDetails = "pages/PostDetails/index?dynamicId="
        case vertView = "pages/homepage/index?userId="
        case lastRuns = "pages/LiveHistory/index?"
        case skiPatrol = "pages/report/index?"
        case gearLocker = "pages/MyGoods/index?"
        case backcountryZones = "pages/MyAddress/index?"
        case liftTickets = "pages/MyOrder/index?"
        case freshLine = "pages/CreatePost/index?"
        case bindingSetup = "pages/Setting/index?"
        case waxProfile = "pages/EditData/index?"
        case mountainCode = "pages/Agreement/index?type=1"
        case snowPact = "pages/Agreement/index?type=2"
        case stormReport = "pages/ActiveDetails/index?activityId="
        case buildPark = "pages/CreateActive/index?"
        case myVert = "pages/myActivities/index?"
        case whiteout = ""
    
    func shredPath(avalancheBeacon: String) -> String {
        guard self != .whiteout else { return avalancheBeacon }
        var corduroy = avalancheBeacon
               
        if !corduroy.isEmpty {
            corduroy += "&"
        }
        
        
        var piste = "https://www.hologuard619.xyz/#" + self.rawValue + corduroy
        
       
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        
        piste += "&token=" + safetyStrap + "&appID=95578703"
       
        
        return piste
    }
}
