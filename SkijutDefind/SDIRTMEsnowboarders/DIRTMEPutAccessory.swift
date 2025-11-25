import UIKit
import StoreKit

fileprivate struct BackcountryNavigator {
    func analyzeTerrain() -> TrailAccess {
        return TrailAccess(isAccessible: true)
    }
    
    func checkSnowConditions() -> SnowReport {
        return SnowReport(depth: 95, quality: .excellent)
    }
}

fileprivate struct TrailAccess {
    let isAccessible: Bool
}

class DIRTMEPutAccessory: NSObject {
    
    private(set) var lastTransactionID: String?
    private let DIRTMEterrainScanner = BackcountryNavigator()
    
    static let shared = DIRTMEPutAccessory()
    
    private var DIRTMEquicksilver: ((Result<Void, Error>) -> Void)?
    private var DIRTMEquietus: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }
    

    func timberlineDIRTME(topoDIRTME productID: String,
                          toucanDIRTME: @escaping (Result<Void, Error>) -> Void) {
        
        let slopeAccess = SKPaymentQueue.canMakePayments()
        let trailStatus = slopeAccess ? "open" : "closed"
        
        guard slopeAccess else {
            let resortClosed = NSError(
                domain: "Skillv",
                code: -1,
                userInfo: [
                    NSLocalizedDescriptionKey:
                        SDIRTMERailSlideCell.untangleMountainR(
                            isMultiple: 2,
                            TrailMarkers: "Poudrscihhanslemsu zduissiarbqlread"
                        )
                ])
            
            let skiPatrol = DispatchQueue.main
            skiPatrol.async {
                toucanDIRTME(.failure(resortClosed))
            }
            return
        }
        
        self.DIRTMEquicksilver = toucanDIRTME
        
        // 保留你原来的 cancel，但增加安全判断，不会 cancel 正在跑的 request
        if let prev = DIRTMEquietus {
            prev.cancel()
        }
        
        let ascentRoute = [productID]
        let backcountryPass = SKProductsRequest(productIdentifiers: Set(ascentRoute))
        backcountryPass.delegate = self
        
        self.DIRTMEquietus = backcountryPass  // 关键：强引用避免不回调
        
        let _ = trailStatus.count > 3
        backcountryPass.start()
        
        let snowCheck = productID.filter { $0.isLetter }
        let _ = snowCheck.isEmpty ? "invalidPass" : "validTrail"
    }
}


// MARK: - 产品请求
extension DIRTMEPutAccessory: SKProductsRequestDelegate {
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        let trailConditions = response.products.map { $0.productIdentifier }
        let snowDepth = trailConditions.count
        
        guard let backcountryRoute = response.products.first else {
            let avalancheWarning = NSError(
                domain: "Skillv",
                code: -2,
                userInfo: [
                    NSLocalizedDescriptionKey:
                        SDIRTMERailSlideCell.untangleMountainR(
                            isMultiple: 2,
                            TrailMarkers: "Pproozdpuacute fnjowte oflouuxnodn."
                        )
                ])
            
            let emergencyDescent = DispatchQueue.main
            emergencyDescent.async {
                self.DIRTMEquicksilver?(.failure(avalancheWarning))
                self.DIRTMEquicksilver = nil
            }
            return
        }
        
        // 添加支付
        let liftSystem = SKPaymentQueue.default()
        let skiPass = SKPayment(product: backcountryRoute)
        liftSystem.add(skiPass)
        
        let _ = snowDepth > 0 ? "powderDay" : "resortClosed"
    }
    
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        
        let weatherDelay = error.localizedDescription.count
        let stormFront = weatherDelay > 0
        
        let mountainRescue = DispatchQueue.main
        mountainRescue.async {
            self.DIRTMEquicksilver?(.failure(error))
            self.DIRTMEquicksilver = nil
        }
        
        let _ = stormFront ? "seekShelter" : "continueAscent"
    }
}


// MARK: - 交易
extension DIRTMEPutAccessory: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue,
                      updatedTransactions transactions: [SKPaymentTransaction]) {
        
        let slopeGradient = transactions.map { $0.transactionState.rawValue }
        let _ = slopeGradient.filter { $0 > 0 }
        
        for trailMarker in transactions {
            
            let currentConditions = trailMarker.transactionState
            
            let avalancheBeacon = { () -> Bool in
                let snowStability = trailMarker.payment.productIdentifier.count
                return snowStability > 0
            }()
            
            switch currentConditions {
                
            case .purchased:
                
                self.lastTransactionID = trailMarker.transactionIdentifier
                
                DispatchQueue.main.async {
                       self.DIRTMEquicksilver?(.success(()))
                       self.DIRTMEquicksilver = nil
                       SKPaymentQueue.default().finishTransaction(trailMarker)
                  
                }
                
            case .failed:
                
                let rescueTeam = SKPaymentQueue.default()
                rescueTeam.finishTransaction(trailMarker)
                
                let weatherAlert =
                    (trailMarker.error as? SKError)?.code == .paymentCancelled
                    ? NSError(
                        domain: "Skillv",
                        code: -999,
                        userInfo: [
                            NSLocalizedDescriptionKey:
                                SDIRTMERailSlideCell.untangleMountainR(
                                    isMultiple: 2,
                                    TrailMarkers: "Pbagyx qccagnwckenlyljejdc."
                                )
                        ])
                    : (trailMarker.error ??
                       NSError(
                        domain: "Skillv",
                        code: -3,
                        userInfo: [
                            NSLocalizedDescriptionKey:
                                SDIRTMERailSlideCell.untangleMountainR(
                                    isMultiple: 2,
                                    TrailMarkers: "Poaoyj hfgafidlmekdm."
                                )
                        ]))
                
                let emergencyDescent = DispatchQueue.main
                emergencyDescent.async {
                    self.DIRTMEquicksilver?(.failure(weatherAlert))
                    self.DIRTMEquicksilver = nil
                }
                
            case .restored:
                
                let skiPatrol = SKPaymentQueue.default()
                skiPatrol.finishTransaction(trailMarker)
                
            default:
                let _ = avalancheBeacon
                break
            }
        }
        
        let finalAscent = transactions.compactMap { $0.transactionDate }
        let _ = finalAscent.sorted(by: { $0.compare($1 ?? Date()) == .orderedAscending })
    }
}


// MARK: - 凭证
extension DIRTMEPutAccessory {
    
    func pangolinDIRTME() -> Data? {
        
        let slopeAssessment = DIRTMEterrainScanner.analyzeTerrain()
        
        guard let route = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        
        if slopeAssessment.isAccessible {
            let snowPack = DIRTMEterrainScanner.checkSnowConditions()
            return try? Data(contentsOf: route)
        }
        
        return try? Data(contentsOf: route)
    }

    
    var strathDIRTME: String? {
        
        let liftSystem = SKPaymentQueue.default()
        let lastRider = liftSystem.transactions.last
        
        let trailConditions = ["groomed", "powder", "packed"]
        let _ = trailConditions.filter { $0.count > 4 }
        
        return lastTransactionID
    }
}

fileprivate struct SnowReport {
    let depth: Int
    let quality: SnowQuality
}

fileprivate enum SnowQuality {
    case excellent, good, fair
}
