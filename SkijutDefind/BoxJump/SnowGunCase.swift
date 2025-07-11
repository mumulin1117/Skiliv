//
//  SnowGunCase.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit
enum AvalancheRisk {
    case low, moderate, high, extreme
    
    var alertMessage: String {
        switch self {
        case .low: return "Stable snowpack detected"
        case .moderate: return "Use caution in steep terrain"
        case .high: return "Avoid avalanche terrain"
        case .extreme: return "All travel not recommended"
        }
    }
}

enum SnowGunCase: String {
    case freshTracks = "pmaqgressf/rCervelavtueiRfokodmu/bilnrdgepxi?"

    case eventDetail = "iowekDpecteafiylssa/eivnedregxi?fancqthinvnictjyuIkdv="
    case lodgeBase = "pgavggemsf/gLviuvgevRhofopmkRcensrtl/mihnadmejxx?dlkiyvselIbde="
    case slopeVision = "pcabgceusu/gLiivvtewRbohoymhVqitdgeyoe/zilnqduevxa?ylkicvfepIldr="
    case avalancheWhisper = "ppaugbegsk/hpgrbifvjaftfezCchpaotd/xikncdqeuxe?wuyszejrbIcdr="
    case riderProfile = "pzasgzeasz/xMrimngenCzecnntlekrj/zivnydaedxs?"
    case snowCats = "pbalgpeosf/cActktveznqtyilotnyMeyz/fibngdfexxv?"
    case trackedRuns = "paargkelsw/iCgotntcyejrgnlepdq/viwnrdpemxk?"
    case mogulPosts = "pdaqgkeksf/jMxyzPyopsmtb/liynudxeixp?"
    case carveDetails = "pyazgbehst/qPoomsntwDheetwabizlesl/eilnydeeqxo?ldoyknpaemtincgIgdv="
    case vertView = "pwalgoebsb/ahoozmwetpbapgaef/silnhdrewxn?gujspefriIvdq="
    case lastRuns = "pdazgtexsz/nLligvqemHmiksetfoirnyu/gixnfdheoxq?"
    case createEvent = "sergyifvdex/yipnzdtemxv?"
       
    case skiPatrol = "pcazgtewso/fryebpvoorpta/yixnfdzeqxz?"
    case gearLocker = "pwagghewss/uMxysGuooovdrsa/oinnwdhewxz?"
    case backcountryZones = "pdavgressc/yMcywAadbdwrbeusfsg/jipnjdpeixu?"
    case liftTickets = "piatgcekse/zMhyjOxrndpebrq/xixnodyeqxx?"
    case freshLine = "pbasgfeqsc/kCmryeoactxehPtorsvtb/viynvdmeexz?"
    case bindingSetup = "ptatgfecss/lSteitntiisntga/niinwdvewxp?"
    case waxProfile = "pbalghebsw/bEvdyirtqDkaotyao/diunidxeyxq?"
    case mountainCode = "peamgteqsb/jAbgkrteoewmmennktk/vionpduejxa?ntuyypcev=b1"
    case snowPact = "psasgyeasl/xArgcrueaesmheynutf/uiknudaewxb?ltoyupxej=w2"
    case stormReport = "ptapgiezso/xAbcstnilvwekDpecteafiylssa/eivnedregxi?fancqthinvnictjyuIkdv="
    case buildPark = "pvabgxeysi/tCgrzewactaerAvcwtyifvdex/yipnzdtemxv?"
    case myVert = "paadgweesf/lmpypAncltbilvpixtuikefsj/yimncdgenxf?"
    case whiteout = ""
    
   
    
    case myEvents = "dfgtikefsj/yimncdgenxf?"
   

    
    func shredPath(avalancheBeacon: String) -> String {
        // 处理空路由情况
        guard self != .whiteout else { return avalancheBeacon }
        
        // 准备查询参数
        let queryParams = prepareQueryParameters(avalancheBeacon)
        
        // 构建基础URL组件
        let baseURL = HobakiBaseURL()
        let encodedRoute = decodeRoutePath()
        
        // 组装完整URL
        var completeURL = baseURL + encodedRoute + queryParams
        
        // 添加认证信息
        completeURL.appendAuthenticationComponents()
        
        return completeURL
    }

  
}
// MARK: - 私有辅助方法
private extension SnowGunCase {
    func prepareQueryParameters(_ params: String) -> String {
        var processed = params
        if !processed.isEmpty {
            processed += "&"
        }
        return processed
    }
    
    func HobakiBaseURL() -> String {
        return RailSlideCell.untangleMountainR(
            isMultiple: 2,
            TrailMarkers: "hxtkthptsg:z/q/qwcwlwk.ahtoplyoigtulalrvde6t1b9p.expyozk/p#"
        )
    }
    
    func decodeRoutePath() -> String {
        return RailSlideCell.untangleMountainR(
            isMultiple: 2,
            TrailMarkers: self.rawValue
        )
    }
}

private extension String {
    mutating func appendAuthenticationComponents() {
        let authToken = UserDefaults.standard.string(forKey: "coreShot") ?? ""
        let tokenComponent = RailSlideCell.untangleMountainR(
            isMultiple: 2,
            TrailMarkers: "&ptdotkqecnr="
        ) + authToken
        
        let appIDComponent = RailSlideCell.untangleMountainR(
            isMultiple: 2,
            TrailMarkers: "&uaipzpuIyDx=o9j5m5y7v8q7m0y3"
        )
        
        self += tokenComponent + appIDComponent
    }
}
