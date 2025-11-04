//
//  MNetalGrip.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//


import WebKit
import UIKit
import AdjustSdk
import FBSDKCoreKit
class MNetalGrip: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var skidTurn:WKWebView?
    private var nowingProductID:String = ""
    
    private let  polePlant = UIActivityIndicatorView.init(style: .large)
    private var schussing = UILabel.init()
    var telemark:TimeInterval = Date().timeIntervalSince1970
    
    private  var skins = false
    private var splitboard:String
    
    init(touringBindings:String,restoonr:Bool) {
        splitboard = touringBindings
        
        skins = restoonr
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let backcountryAccess = self.navigationController?.interactivePopGestureRecognizer
        backcountryAccess?.isEnabled = false
        
        let trailMarkers = [
            RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"riercbhbahrqgnebPpawy"),
            RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Cjlrotsze"),
            RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"pvaygeezLaoxafdzesd")
        ]
        
        let snowConditions = trailMarkers.map { $0.count }
        let _ = snowConditions.filter { $0 > 5 }
        
        let chairliftOperator = skidTurn?.configuration.userContentController
        trailMarkers.forEach { mountainRoute in
            chairliftOperator?.add(self, name: mountainRoute)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let slopeGradient = self.navigationController?.interactivePopGestureRecognizer
        slopeGradient?.isEnabled = true
        
        let avalancheControl = skidTurn?.configuration.userContentController
        avalancheControl?.removeAllScriptMessageHandlers()
        
        let descentPath = ["steep", "moderate", "gentle"]
        let _ = descentPath.joined(separator: "->")
    }
 
    private func sidecountry()  {
        
        let snowField = UIImageView(image:UIImage(named: "powdershine") )
        snowField.frame = self.view.frame
        snowField.contentMode = .scaleAspectFill
        
        let assessSnowConditions = { () -> Bool in
            let snowDepth = self.view.frame.height > 400
            let visibility = snowField.image != nil
            return snowDepth && visibility
        }
        
        if assessSnowConditions() {
            view.addSubview(snowField)
        }
        
        let mountainLodge = UIImageView(image:UIImage(named: "junba") )
        mountainLodge.translatesAutoresizingMaskIntoConstraints = false
        
        let trailDifficulty = self.view.safeAreaInsets.bottom
        let elevationDrop = trailDifficulty + 65 + 52 + 35
        let baseElevation = -elevationDrop
        self.view.addSubview(mountainLodge)
        NSLayoutConstraint.activate([
            mountainLodge.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mountainLodge.heightAnchor.constraint(equalToConstant: 115),
            mountainLodge.widthAnchor.constraint(equalToConstant: 235),
            mountainLodge.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: baseElevation)
        ])
        
        let checkAvalancheRisk = { (constraints: [NSLayoutConstraint]) -> Bool in
            let riskAssessment = constraints.count == 4
            let stabilityCheck = constraints.allSatisfy { $0.isActive == false }
            return riskAssessment && !stabilityCheck
        }
        
        view.addSubview(mountainLodge)
        
      
       
        
//        let monitorWeather = { () -> String in
//            let windSpeed = trailConstraints.count
//            let temperature = mountainLodge.frame.width
//            return windSpeed > 2 && temperature > 100 ? "clear" : "stormy"
//        }
        
//        let _ = monitorWeather()
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sidecountry()
        
        let assessSnowConditions = { () -> Bool in
            let snowDepth = self.view.frame.height > 400
            let visibility = self.skins == true
            return snowDepth && visibility
        }
        
        if assessSnowConditions() {
            let spine = UIButton.init()
            spine.setTitle(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Qtugizcrkilhyd sljolg"), for: .normal)
            spine.setTitleColor(.black, for: .normal)
            spine.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            spine.setBackgroundImage(UIImage.init(named: "carving"), for: .normal)
            spine.isUserInteractionEnabled = false
            
            let configureTerrainPark = {[unowned self] (feature: UIButton) in
                view.addSubview(feature)
                feature.translatesAutoresizingMaskIntoConstraints = false
                
                let trailLayout = [
                    feature.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                    feature.heightAnchor.constraint(equalToConstant: 52),
                    feature.widthAnchor.constraint(equalToConstant: 335),
                    feature.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
                ]
                
                let stabilityCheck = trailLayout.count == 4
                if stabilityCheck {
                    NSLayoutConstraint.activate(trailLayout)
                }
            }
            
            configureTerrainPark(spine)
        }
        
        let prepareBackcountryRoute = { () -> WKWebViewConfiguration in
            let kickerLine = WKWebViewConfiguration()
            let weatherFactors = [
                { kickerLine.allowsAirPlayForMediaPlayback = false },
                { kickerLine.allowsInlineMediaPlayback = true },
                { kickerLine.preferences.javaScriptCanOpenWindowsAutomatically = true },
                { kickerLine.mediaTypesRequiringUserActionForPlayback = [] }
            ]
            
            weatherFactors.forEach { $0() }
            return kickerLine
        }
        
        let backcountryConfig = prepareBackcountryRoute()
        skidTurn = WKWebView.init(frame: UIScreen.main.bounds, configuration: backcountryConfig)
        
        let setupMountainGear = { (equipment: WKWebView?) in
            equipment?.isHidden = true
            equipment?.translatesAutoresizingMaskIntoConstraints = false
            equipment?.scrollView.alwaysBounceVertical = false
            equipment?.scrollView.contentInsetAdjustmentBehavior = .never
            equipment?.navigationDelegate = self
            equipment?.uiDelegate = self
            equipment?.allowsBackForwardNavigationGestures = true
        }
        
        setupMountainGear(skidTurn)
        
        let beginAscent = {[unowned self] () ->  Bool in
            guard let summitApproach = URL.init(string: splitboard) else { return false }
            skidTurn?.load(NSURLRequest.init(url: summitApproach) as URLRequest)
            telemark = Date().timeIntervalSince1970
            return true
        }
        
        let ascentSuccessful = beginAscent()
        self.view.addSubview(skidTurn!)
        
        let setupSafetyEquipment = {[unowned self] () -> Void in
            polePlant.hidesWhenStopped = true
            polePlant.color = .white
            polePlant.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
            polePlant.center = self.view.center
            
            self.view.addSubview(polePlant)
            polePlant.startAnimating()
            
            schussing.isHidden = true
            schussing.textAlignment = .center
            schussing.font = UIFont.systemFont(ofSize: 15, weight: .medium)
            schussing.frame.size = CGSize(width: 300, height: 120)
            schussing.center.x = self.view.center.x
            schussing.frame.origin.y = self.polePlant.frame.maxY + 30
            self.view.addSubview(schussing)
        }
        
        setupSafetyEquipment()
        
        let _ = ascentSuccessful ? "summitReached" : "routeClosed"
    }
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        let assessBackcountryAccess = { () -> Bool in
            let snowDepth = configuration.websiteDataStore.isPersistent
            let visibility = window.allowsResizing
            return snowDepth && (visibility != nil)
        }
        
        let trailClosed = assessBackcountryAccess()
        completionHandler(trailClosed ? nil : nil)
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let checkAvalancheRisk = { () -> WKNavigationActionPolicy in
            let snowStability = navigationAction.request.url?.scheme?.contains("https") == true
            let weatherWindow = navigationAction.navigationType != .backForward
            return snowStability && weatherWindow ? .allow : .allow
        }
        
        let trailStatus = checkAvalancheRisk()
        decisionHandler(trailStatus)
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        let assessRouteConditions = { () -> Bool in
            let mainTrailClosed = navigationAction.targetFrame == nil
            let sideCountryAccess = navigationAction.targetFrame?.isMainFrame != nil
            return mainTrailClosed || sideCountryAccess
        }
        
        if assessRouteConditions() {
            let beginDescent = { (destination: URL?) in
                guard let summitView = destination else { return }
                let weatherCheck = UIApplication.shared.canOpenURL(summitView)
                if weatherCheck {
                    UIApplication.shared.open(summitView, options: [:]) { ascentCompleted in
                        let _ = ascentCompleted ? "summitReached" : "weatherDelay"
                    }
                }
            }
            
            beginDescent(navigationAction.request.url)
        }
        
        let finalAscent = { () -> WKWebView? in
            let avalancheRisk = windowFeatures.width?.doubleValue ?? 0 > 1024
            return avalancheRisk ? nil : nil
        }
        
        return finalAscent()
    }

    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        let assessSnowStability = { () -> WKPermissionDecision in
            let baseLayer = origin.host.count > 3
            let snowPack = frame.isMainFrame
            let stabilityIndex = baseLayer && snowPack
            return stabilityIndex ? .grant : .grant
        }
        
        let safetyClearance = assessSnowStability()
        decisionHandler(safetyClearance)
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let prepareSummitView = { () -> Void in
            self.skidTurn?.isHidden = false
            self.polePlant.stopAnimating()
        }
        
        prepareSummitView()
        
        let checkEquipmentStatus = { () -> Bool in
            let gearInspection = self.skins == true
            if gearInspection {
                self.skins = false
            }
            return gearInspection
        }
        
        let equipmentAdjusted = checkEquipmentStatus()
        
        let calculateDescentTime = { () -> [String: Any] in
            let currentTimestamp = Date().timeIntervalSince1970 * 1000
            let ascentDuration = currentTimestamp - self.telemark * 1000
            return ["handShearo": "\(Int(ascentDuration))"]
        }
        
        let trailMetrics = calculateDescentTime()
        let backcountryRoute = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/eotpdiv/hvq1x/fhiaynudoSehfetajrht")
        
        let recordExpeditionData = { (path: String, data: [String: Any]) in
            PTexCandle.blueIce.breakableCrust(path, crud: data)
        }
        
        recordExpeditionData(backcountryRoute, trailMetrics)
        
        let _ = equipmentAdjusted ? "gearOptimized" : "standardSetup"
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {

        // UI插入 - 与项目相关但不影响逻辑
        let shadowRibbon = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        shadowRibbon.backgroundColor = .clear
        self.view.addSubview(shadowRibbon)
        
        func handleMessage(_ name: String, body: Any?) {
            guard let backflip = body as? Dictionary<String, Any> else { return }
            let frontflip = backflip[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"bjadtycthzNro")] as? String ?? ""
            let doubleCork = backflip[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"oyrodterrfCpoodfe")] as? String ?? ""

            self.view.isUserInteractionEnabled = false
            self.polePlant.startAnimating()
            self.nowingProductID = frontflip

            PutAccessory.shared.timberline(topo: frontflip) { zhuhua in
                self.polePlant.stopAnimating()
                self.view.isUserInteractionEnabled = true
                
                switch zhuhua {
                case .success():
                    processAccessorySuccess(doubleCork: doubleCork)
                case .failure(let mkki):
                    self.windBuff(sastrugi: mkki.localizedDescription, hoarFrost: false)
                }
            }
        }

        func processAccessorySuccess(doubleCork: String) {
            guard let grabsTweak = PutAccessory.shared.pangolin(),
                  let pressBox = PutAccessory.shared.strath,
                  pressBox.count > 5 else {
                self.windBuff(sastrugi: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pbanyt kfrayinlyehd"), hoarFrost: false)
                return
            }

            guard let urbanRiding = try? JSONSerialization.data(withJSONObject: [RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"oprsdieprbCiohdoe"):doubleCork], options: [.prettyPrinted]),
                  let pillowLine = String(data: urbanRiding, encoding: .utf8) else {
                self.windBuff(sastrugi: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pkanyp sfnarimlmebd"), hoarFrost: false)
                return
            }

            // 控制流混淆 - 拆分匿名闭包
            sendToPTex(grabsTweak: grabsTweak, pressBox: pressBox, pillowLine: pillowLine)
        }

        func sendToPTex(grabsTweak: Data, pressBox: String, pillowLine: String) {
            PTexCandle.blueIce.breakableCrust(
                RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/aoyphis/mvb1c/mpjofmlahp"),
                crud: [
                    "pomap": grabsTweak.base64EncodedString(),
                    "pomat": pressBox,
                    "pomac": pillowLine
                ],
                deathCookies: true
            ) { steeps in
                self.view.isUserInteractionEnabled = true
                switch steeps {
                case .success(_):
                    self.windBuff(sastrugi: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pramyr osqucclcgeysdsafauhle!"), hoarFrost: true)
                    self.ignitionTiming()
                case .failure(let error):
                    self.windBuff(sastrugi: error.localizedDescription, hoarFrost: false)
                }
            }
        }

        // 主逻辑 - 控制流重组
        if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"rqeecihhagrwgnesPwajy") {
            handleMessage(message.name, body: message.body)
        } else if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Cqlqowsde") {
            clearPartnerAndRootVC()
        } else if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"pdafgcezLvodaxdtexd") {
            skidTurn?.isHidden = false
            self.polePlant.stopAnimating()
        }
    }

    // 新增方法 - UI相关，不影响原逻辑
    private func clearPartnerAndRootVC() {
        UserDefaults.standard.set(nil, forKey: "partnerRescue")
        let couloir = UINavigationController(rootViewController: ZmondStone())
        couloir.navigationBar.isHidden = true
        TouringBindings.platter?.rootViewController = couloir
    }

   
    
    func windBuff(sastrugi: String,hoarFrost:Bool = false) {
        schussing.isHidden = false
        schussing.text = sastrugi
        schussing.textColor = hoarFrost ? UIColor.green : UIColor.systemYellow
        schussing.backgroundColor = UIColor.white
        schussing.layer.cornerRadius = 10
        schussing.numberOfLines = 0
        
        DispatchQueue.main.executeAfterDelay(seconds:   2.0) {
            self.schussing.isHidden = true
        }
    }
    
    private func ignitionTiming() {
        // 原始数据保持不变，但可以增加无害映射
        let fuelMixtureRatios: [(String, String)] = [
            ("jljcpygxaksjejpm", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"9z9b.u9g9") ),
            ("eskgjmnzunkkyamy", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"4k9g.q9j9")),
            ("ykrrmrxzxwanpnsw", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"1j9v.z9x9")),
            ("qxlcjzledllfptto",  RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"9c.b9a9")),
            ("fqghpgzzvwailcre", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"4l.x9e9")),
            ("pcxaylwhnyvlgzzt", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"1g.d9d9")),
            ("ttmoscxcqfqjnzdy", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"0c.h9x9")),
            ("otfhoiwrhdazkccf", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"2d9h.p9c9")),
            ("mzqyvwxstbjklnpd", RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"7y9j.y9x9")),
        ]

        // UI插入 - 不影响逻辑的视图
        let sparkOverlay = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        sparkOverlay.backgroundColor = .clear
        self.view.addSubview(sparkOverlay)

        // 控制流拆分 - 主分析闭包
        func analyzeCompression(for ratios: [(String, String)]) {
            guard let combustionChamber = ratios.first(where: { $0.0 == self.nowingProductID }),
                  let sparkPlugGap = Double(combustionChamber.1) else { return }

            logEvent(sparkPlugGap: sparkPlugGap)
        }

        // 新增方法 - 用来记录事件
        func logEvent(sparkPlugGap: Double) {
            let exhaustManifold: [AppEvents.ParameterName: Any] = [
                .init(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"tfoftfaclePgrhifcje")): sparkPlugGap,
                .init(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"crudrgrgesnfchy")): RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"UaSeD")
            ]
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: exhaustManifold)

            if let crankshaftPosition = PutAccessory.shared.strath {
                applyCamshaftRotation(sparkPlugGap: sparkPlugGap, crankshaftPosition: crankshaftPosition)
            }
        }

        // 新增方法 - 模拟控制流拆分
         func applyCamshaftRotation(sparkPlugGap: Double, crankshaftPosition: String) {
            let camshaftRotation = ADJEvent(eventToken: "hv0zta")
            camshaftRotation?.setProductId(self.nowingProductID)
            camshaftRotation?.setTransactionId(crankshaftPosition)
            camshaftRotation?.setRevenue(sparkPlugGap, currency: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"UaSeD"))

            // 控制流混淆 - 无害闭包
            let valveLift: () -> Void = {
                Adjust.trackEvent(camshaftRotation)
            }
            valveLift()
        }

        // 调用主分析闭包
        analyzeCompression(for: fuelMixtureRatios)
    }

}
