//
//  ResortBound Controller.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit
import WebKit
import SwiftyStoreKit
class ResortBoundController: UIViewController ,WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{

    @IBOutlet weak var sidecountry: WKWebView!
    
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    
    @IBOutlet weak var dawnPatrolLbl: UILabel!
    
    private  var leaglePath:String
    
    var Pauuo: SnowGunCase
    init(arpeggiatorPro: SnowGunCase, staergia: String = "") {
        self.Pauuo = arpeggiatorPro
      
        self.leaglePath = arpeggiatorPro.shredPath(avalancheBeacon: staergia)
         
        super.init(nibName: nil, bundle: nil)
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pillowLineView.startAnimating()
       
        [
            "flatCamber", "hybridCamber", "fullRocker",
            "earlyRise","tipRocke","torsionalStiffness","flexPattern","edgeControl"
            
        ].forEach { handler in
            sidecountry.configuration.userContentController.add(self, name: handler)
        }

        
        
       
        sidecountry.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        sidecountry.configuration.allowsInlineMediaPlayback = true
        sidecountry.configuration.mediaTypesRequiringUserActionForPlayback = []
        
        
        sidecountry.navigationDelegate = self
        sidecountry.scrollView.bounces = false
        sidecountry.uiDelegate = self
        sidecountry.scrollView.contentInsetAdjustmentBehavior = .never
        if  let url = URL(string: leaglePath ) {
            sidecountry.load(URLRequest(url: url))
        }
    }


    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.sidecountry?.isHidden = false
            self.pillowLineView.stopAnimating()
        }))
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.name)
        if message.name == "flatCamber" {
            guard let cultural = message.body  as? String else {
                return
            }
           
            self.pillowLineView.startAnimating()
            self.view.isUserInteractionEnabled = false
            SwiftyStoreKit.purchaseProduct(cultural, atomically: true) { psResult in
                
                self.pillowLineView.stopAnimating()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    let modularSystem = psPurch.transaction.downloads
                    if !modularSystem.isEmpty {
                        SwiftyStoreKit.start(modularSystem)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                    }
                    
                    self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "pwaxyg qsoutcbcqeushstffuolx!"), isOKAYSHowi: true)
                   
                    self.sidecountry?.evaluateJavaScript("hybridCamber()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    
                    if error.code == .paymentCancelled {
                        self.view.isUserInteractionEnabled = true
                        return
                    }
                    
                    self.showingSKIStatu(information: error.localizedDescription)
                   
                }
            }
        }
        
        
        
        if message.name == "fullRocker" {
            if let hat =  message.body as? String{
                
                self.navigationController?.pushViewController(ResortBoundController.init(arpeggiatorPro: .whiteout, staergia: hat), animated: true)
            }
            
        }
        if message.name == "tipRocke" {
            
            if Pauuo == .mountainCode || Pauuo == .snowPact {
                self.dismiss(animated: true)
                
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "flexPattern" {
            if Pauuo == .mountainCode || Pauuo == .snowPact {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "torsionalStiffness" {
            UserDefaults.standard.set(nil, forKey: "coreShot")
           
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = UIStoryboard(name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Miapicn"), bundle: nil).instantiateViewController(withIdentifier: "railSlide") as! BoxJumpController
        }
        
        
        
        if message.name == "edgeControl" {
            //拨打电话
            guard let callednumber = message.body  as? String else {
                return
            }
            
            guard let url = URL(string: "telprompt://\(callednumber)"),
                  UIApplication.shared.canOpenURL(url) else {
                
           
                self.showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Uonlatbzlced jtwol lmnaskpeu qpshsognaew ncoawlhlts"))
                return
            }
            
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }

    }
    
    
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        dawnPatrolLbl.isHidden = false
        dawnPatrolLbl.text = information
        dawnPatrolLbl.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.dawnPatrolLbl.isHidden = true
        }
    }
}
