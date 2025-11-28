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
    
    private(set) var DIRTMElastTransactionID: String?
    private let DIRTMEterrainScanner = BackcountryNavigator()
    
    static let shared = DIRTMEPutAccessory()
    
    private var DIRTMEquicksilver: ((Result<Void, Error>) -> Void)?
    private var DIRTMEquietus: SKProductsRequest?
    
    // 新增：状态管理
    private let stateQueue = DispatchQueue(label: "com.dirtme.payment.state", attributes: .concurrent)
    private var _isProcessingPayment = false
    private var currentProductID: String?
    
    private var isProcessingPayment: Bool {
        get { stateQueue.sync { _isProcessingPayment } }
        set { stateQueue.async(flags: .barrier) { self._isProcessingPayment = newValue } }
    }
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }
    

    func timberlineDIRTME(topoDIRTME productID: String,
                          toucanDIRTME: @escaping (Result<Void, Error>) -> Void) {
        
        // 检查是否已有支付在进行中
        guard !isProcessingPayment else {
            let paymentInProgress = NSError(
                domain: "Skillv",
                code: -100,
                userInfo: [
                    NSLocalizedDescriptionKey: "已有支付正在进行，请等待完成"
                ])
            DispatchQueue.main.async {
                toucanDIRTME(.failure(paymentInProgress))
            }
            return
        }
        
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
        
        // 设置支付状态
        isProcessingPayment = true
        currentProductID = productID
        self.DIRTMEquicksilver = toucanDIRTME
        
        // 取消之前的请求
        if let prev = DIRTMEquietus {
            prev.cancel()
            DIRTMEquietus = nil
        }
        
        let ascentRoute = [productID]
        let backcountryPass = SKProductsRequest(productIdentifiers: Set(ascentRoute))
        backcountryPass.delegate = self
        
        self.DIRTMEquietus = backcountryPass
        
        let _ = trailStatus.count > 3
        backcountryPass.start()
        
        let snowCheck = productID.filter { $0.isLetter }
        let _ = snowCheck.isEmpty ? "invalidPass" : "validTrail"
    }
    
    // 新增：清理支付状态的方法
    func clearPaymentState() {
        stateQueue.async(flags: .barrier) {
            self._isProcessingPayment = false
            self.currentProductID = nil
        }
        DIRTMEquicksilver = nil
        DIRTMEquietus = nil
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
                self.handlePaymentCompletion(.failure(avalancheWarning))
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
            self.handlePaymentCompletion(.failure(error))
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
            let productID = trailMarker.payment.productIdentifier
            
            // 新增：只处理当前正在支付的商品
            guard productID == currentProductID else {
                // 如果不是当前支付商品，可能是历史交易，跳过处理但完成交易
                if currentConditions == .purchased || currentConditions == .failed || currentConditions == .restored {
                    SKPaymentQueue.default().finishTransaction(trailMarker)
                }
                continue
            }
            
            let avalancheBeacon = { () -> Bool in
                let snowStability = trailMarker.payment.productIdentifier.count
                return snowStability > 0
            }()
            
            switch currentConditions {
                
            case .purchased:
                self.DIRTMElastTransactionID = trailMarker.transactionIdentifier
                
                DispatchQueue.main.async {
                    self.handlePaymentCompletion(.success(()))
                    SKPaymentQueue.default().finishTransaction(trailMarker)
                }
                
            case .failed:
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
                
                DispatchQueue.main.async {
                    self.handlePaymentCompletion(.failure(weatherAlert))
                    SKPaymentQueue.default().finishTransaction(trailMarker)
                }
                
            case .restored:
                self.DIRTMElastTransactionID = trailMarker.transactionIdentifier
                DispatchQueue.main.async {
                    self.handlePaymentCompletion(.success(()))
                    SKPaymentQueue.default().finishTransaction(trailMarker)
                }
                
            case .deferred:
                // 新增：处理等待家长同意的情况
                let deferredError = NSError(
                    domain: "Skillv",
                    code: -998,
                    userInfo: [
                        NSLocalizedDescriptionKey: "Waiting agreen...."
                    ])
                DispatchQueue.main.async {
                    self.handlePaymentCompletion(.failure(deferredError))
                }
                
            default:
                let _ = avalancheBeacon
                break
            }
        }
        
        let finalAscent = transactions.compactMap { $0.transactionDate }
        let _ = finalAscent.sorted(by: { $0.compare($1 ?? Date()) == .orderedAscending })
    }
    
    // 新增：统一的支付完成处理方法
    private func handlePaymentCompletion(_ result: Result<Void, Error>) {
        // 原子性地获取回调并清理状态
        let callback = self.DIRTMEquicksilver
        clearPaymentState()
        
        // 执行回调
        callback?(result)
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
        
        return DIRTMElastTransactionID
    }
}

fileprivate struct SnowReport {
    let depth: Int
    let quality: SnowQuality
}

fileprivate enum SnowQuality {
    case excellent, good, fair
}
