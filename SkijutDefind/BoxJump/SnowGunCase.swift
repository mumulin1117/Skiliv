//
//  SnowGunCase.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit


enum SnowGunCase: String {
    case freshTracks = "pmaqgressf/rCervelavtueiRfokodmu/bilnrdgepxi?"

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
    
    func shredPath(avalancheBeacon: String) -> String {
        guard self != .whiteout else { return avalancheBeacon }
        var corduroy = avalancheBeacon
               
        if !corduroy.isEmpty {
            corduroy += "&"
        }
        
        
        var piste = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "hxtkthptsg:z/q/qwcwlwk.ahtoplyoigtulalrvde6t1b9p.expyozk/p#") + RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: self.rawValue) + corduroy
        
       
        let safetyStrap = UserDefaults.standard.object(forKey: "coreShot") as? String ?? ""
        
        piste += RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "&ptdotkqecnr=") + safetyStrap + RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "&uaipzpuIyDx=o9j5m5y7v8q7m0y3")
       
        
        return piste
    }
}
