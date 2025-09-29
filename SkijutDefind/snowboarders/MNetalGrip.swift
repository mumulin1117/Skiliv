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
    private var skidTurn:WKWebView?
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
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        skidTurn?.configuration.userContentController.add(self, name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"riercbhbahrqgnebPpawy"))
        skidTurn?.configuration.userContentController.add(self, name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Cjlrotsze"))
        skidTurn?.configuration.userContentController.add(self, name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"pvaygeezLaoxafdzesd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        skidTurn?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func sidecountry()  {
        
        let sluff = UIImageView(image:UIImage(named: "powdershine") )
        sluff.frame = self.view.frame
        sluff.contentMode = .scaleAspectFill
        view.addSubview(sluff)
        
        let junba = UIImageView(image:UIImage(named: "junba") )
        junba.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(junba)
        NSLayoutConstraint.activate([
          
            junba.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            junba.heightAnchor.constraint(equalToConstant: 115),
            junba.widthAnchor.constraint(equalToConstant: 235),
            junba.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 25)
        ])
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sidecountry()
        if skins == true {
            let  spine = UIButton.init()
            spine.setTitle(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Qtugizcrkilhyd sljolg"), for: .normal)
            spine.setTitleColor(.black, for: .normal)
            spine.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            spine.setBackgroundImage(UIImage.init(named: "carving"), for: .normal)
            spine.isUserInteractionEnabled = false
            view.addSubview(spine)
            spine.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                spine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                spine.heightAnchor.constraint(equalToConstant: 52),
                
                spine.widthAnchor.constraint(equalToConstant: 335),
            
                spine.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let kickerLine = WKWebViewConfiguration()
        kickerLine.allowsAirPlayForMediaPlayback = false
        kickerLine.allowsInlineMediaPlayback = true
        kickerLine.preferences.javaScriptCanOpenWindowsAutomatically = true
        kickerLine.mediaTypesRequiringUserActionForPlayback = []
        kickerLine.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        skidTurn = WKWebView.init(frame: UIScreen.main.bounds, configuration: kickerLine)
        skidTurn?.isHidden = true
        skidTurn?.translatesAutoresizingMaskIntoConstraints = false
        skidTurn?.scrollView.alwaysBounceVertical = false
        
        skidTurn?.scrollView.contentInsetAdjustmentBehavior = .never
        skidTurn?.navigationDelegate = self
        
        skidTurn?.uiDelegate = self
        skidTurn?.allowsBackForwardNavigationGestures = true
   
        if let knuckle = URL.init(string: splitboard) {
            skidTurn?.load(NSURLRequest.init(url:knuckle) as URLRequest)
            telemark = Date().timeIntervalSince1970
        }
        self.view.addSubview(skidTurn!)
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
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let huck = navigationAction.request.url {
                    UIApplication.shared.open(huck,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        skidTurn?.isHidden = false
        self.polePlant.stopAnimating()
        if skins == true {
     
//            self.windBuff(sastrugi: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Lookgw gitnvssuecfcpeasmszfyuelb!"), hoarFrost: true)
            skins = false
            
        }

        let airtime = RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/eotpdiv/hvq1x/fhiaynudoSehfetajrht")
         let flatSpin: [String: Any] = [
            "handShearo":"\(Int(Date().timeIntervalSince1970*1000 - self.telemark*1000))"
         ]
      
        PTexCandle.blueIce.breakableCrust( airtime, crud: flatSpin)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"rqeecihhagrwgnesPwajy"),
           let backflip = message.body as? Dictionary<String,Any> {
           let frontflip = backflip[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"bjadtycthzNro")] as? String ?? ""
           let doubleCork = backflip[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"oyrodterrfCpoodfe")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            self.polePlant.startAnimating()
            SwiftyStoreKit.purchaseProduct(frontflip, atomically: true) { artisticTrailblazer in
                self.polePlant.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let tripleCork = brushPioneer.transaction.downloads
                    
                    
                    if !tripleCork.isEmpty {
                        
                        SwiftyStoreKit.start(tripleCork)
                    }
                    
                  
                   
                   
                
                    guard let grabsTweak = SwiftyStoreKit.localReceiptData,
                          let pressBox = brushPioneer.transaction.transactionIdentifier,
                          pressBox.count > 5
                    else {
                        
                        self.windBuff(sastrugi:RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pbanyt kfrayinlyehd"), hoarFrost: false)
                       
                        return
                      }
                    
                    guard let urbanRiding = try? JSONSerialization.data(withJSONObject: [RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"oprsdieprbCiohdoe"):doubleCork], options: [.prettyPrinted]),
                          let pillowLine = String(data: urbanRiding, encoding: .utf8) else{
                        
                        self.windBuff(sastrugi:RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pkanyp sfnarimlmebd"), hoarFrost: false)
                       
                        return
                    }

                    PTexCandle.blueIce.breakableCrust(RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"/aoyphis/mvb1c/mpjofmlahp"), crud: [
                        "pomap":grabsTweak.base64EncodedString(),//payload
                        "pomat":pressBox,//transactionId
                        "pomac":pillowLine//callbackResult
                    ],deathCookies: true) { steeps in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch steeps{
                        case .success(_):
                            self.windBuff(sastrugi: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Pramyr osqucclcgeysdsafauhle!"), hoarFrost: true)
                           
                         
                        case .failure(let error):
                            self.windBuff(sastrugi: error.localizedDescription, hoarFrost: false)
                           
                        }
                    }
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        self.windBuff(sastrugi: error.localizedDescription, hoarFrost: false)
                       
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"Cqlqowsde") {

            UserDefaults.standard.set(nil, forKey: "partnerRescue")// 清除本地token
           
            let couloir = UINavigationController.init(rootViewController: ZmondStone.init())
            couloir.navigationBar.isHidden = true
            
          
            TouringBindings.platter?.rootViewController = couloir
        }
        
        if message.name == RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers:"pdafgcezLvodaxdtexd") {
            skidTurn?.isHidden = false
            self.polePlant.stopAnimating()
        }
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
}
