//
//  MNetalGrip.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/9/8.
//

import SwiftyStoreKit
import WebKit
import UIKit



class MNetalGrip: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var creativeGroundbreaker:WKWebView?
    private let  pillowLineView = UIActivityIndicatorView.init(style: .large)
    private var statuYamisLabel = UILabel.init()
    var visualPattern:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var creativeTrendsetter:String
    
    init(Trendsetter:String,Matrix:Bool) {
        creativeTrendsetter = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "rechargePay")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "Close")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        creativeGroundbreaker?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "powder")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        artisticTrendsetter()
        if artisticGround == true {
            let  colorIndividuality = UIButton.init()
            colorIndividuality.setTitle("Quickly log", for: .normal)
            colorIndividuality.setTitleColor(.black, for: .normal)
            colorIndividuality.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            colorIndividuality.setBackgroundImage(UIImage.init(named: "carving"), for: .normal)
            colorIndividuality.isUserInteractionEnabled = false
            view.addSubview(colorIndividuality)
            colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                colorIndividuality.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
                
                colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
            
                colorIndividuality.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let visualNetwork = WKWebViewConfiguration()
        visualNetwork.allowsAirPlayForMediaPlayback = false
        visualNetwork.allowsInlineMediaPlayback = true
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualNetwork.mediaTypesRequiringUserActionForPlayback = []
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        creativeGroundbreaker = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualNetwork)
        creativeGroundbreaker?.isHidden = true
        creativeGroundbreaker?.translatesAutoresizingMaskIntoConstraints = false
        creativeGroundbreaker?.scrollView.alwaysBounceVertical = false
        
        creativeGroundbreaker?.scrollView.contentInsetAdjustmentBehavior = .never
        creativeGroundbreaker?.navigationDelegate = self
        
        creativeGroundbreaker?.uiDelegate = self
        creativeGroundbreaker?.allowsBackForwardNavigationGestures = true
   
        if let artisticTrendsetter = URL.init(string: creativeTrendsetter) {
            creativeGroundbreaker?.load(NSURLRequest.init(url:artisticTrendsetter) as URLRequest)
            visualPattern = Date().timeIntervalSince1970
        }
        self.view.addSubview(creativeGroundbreaker!)
        pillowLineView.hidesWhenStopped = true
        pillowLineView.color = .white
        pillowLineView.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        pillowLineView.center = self.view.center
        
        self.view.addSubview(pillowLineView)
        pillowLineView.startAnimating()
        statuYamisLabel.isHidden = true
        statuYamisLabel.textAlignment = .center
        statuYamisLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
       
        statuYamisLabel.frame.size = CGSize(width: 300, height: 120)
        statuYamisLabel.center.x = self.view.center.x
        statuYamisLabel.frame.origin.y = self.pillowLineView.frame.maxY + 30
        self.view.addSubview(statuYamisLabel)
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        creativeGroundbreaker?.isHidden = false
        self.pillowLineView.stopAnimating()
        if artisticGround == true {
     
            self.showingSKIStatu(information: "Log insuccessful!", isOKAYSHowi: true)
            artisticGround = false
            
        }

        let creativeForerunner = "/opi/v1/handSheart"
         let brushForerunner: [String: Any] = [
            "handShearo":"\(Int(Date().timeIntervalSince1970*1000 - self.visualPattern*1000))"
         ]
      
        PTexCandle.artisticArtisan.artisticTrainerFive( creativeForerunner, orVariation: brushForerunner)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer["batchNo"] as? String ?? ""
           let colorDistinction = creativeTrailblazer["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            self.pillowLineView.startAnimating()
            SwiftyStoreKit.purchaseProduct(brushTrailblazer, atomically: true) { artisticTrailblazer in
                self.pillowLineView.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let colorDifferentiation = brushPioneer.transaction.downloads
                    
                    
                    if !colorDifferentiation.isEmpty {
                        
                        SwiftyStoreKit.start(colorDifferentiation)
                    }
                    
                  
                   
                   
                
                    guard let artisticPioneer = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = brushPioneer.transaction.transactionIdentifier,
                          creativeInnovator.count > 5
                    else {
                        
                        self.showingSKIStatu(information:"Pay failed", isOKAYSHowi: false)
                       
                        return
                      }
                    
                    guard let visualAssembly = try? JSONSerialization.data(withJSONObject: ["orderCode":colorDistinction], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: visualAssembly, encoding: .utf8) else{
                        
                        self.showingSKIStatu(information:"Pay failed", isOKAYSHowi: false)
                       
                        return
                    }

                    PTexCandle.artisticArtisan.artisticTrainerFive("/opi/v1/pomap", orVariation: [
                        "pomap":artisticPioneer.base64EncodedString(),//payload
                        "pomat":creativeInnovator,//transactionId
                        "pomac":orderCodejsonString//callbackResult
                    ],creativeTrainerd: true) { creativeOriginator in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch creativeOriginator{
                        case .success(_):
                            self.showingSKIStatu(information: "Pay successful!", isOKAYSHowi: true)
                           
                         
                        case .failure(let error):
                            self.showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
                           
                        }
                    }
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        self.showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
                       
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "partnerRescue")// 清除本地token
           
            let brushOriginator = UINavigationController.init(rootViewController: ZmondStone.init())
            brushOriginator.navigationBar.isHidden = true
            
          
            TouringBindings.colorMixing?.rootViewController = brushOriginator
        }
        
        if message.name == "pageLoaded" {
            creativeGroundbreaker?.isHidden = false
            self.pillowLineView.stopAnimating()
        }
    }
   
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        statuYamisLabel.isHidden = false
        statuYamisLabel.text = information
        statuYamisLabel.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        statuYamisLabel.backgroundColor = UIColor.white
        statuYamisLabel.layer.cornerRadius = 10
        statuYamisLabel.numberOfLines = 0
        
        DispatchQueue.main.executeAfterDelay(seconds:   2.0) {
            self.statuYamisLabel.isHidden = true
        }
    }
}
