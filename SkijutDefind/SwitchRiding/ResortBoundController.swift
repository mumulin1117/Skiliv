//
//  ResortBound Controller.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit
import WebKit

import StoreKit
class ResortBoundController: UIViewController ,WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{

    @IBOutlet weak var sidecountry: WKWebView!
    
    
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    
    @IBOutlet weak var dawnPatrolLbl: UILabel!
    
    private  var leaglePath:String
    
    private var blowerPow: SnowGunCase
    init(secretSpot: SnowGunCase, localsOnly: String = "") {
        self.blowerPow = secretSpot
      
        self.leaglePath = secretSpot.shredPath(avalancheBeacon: localsOnly)
         
        super.init(nibName: nil, bundle: nil)
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func cocupCrystalers() {
        var diamondStone = ["flatCamber", "hybridCamber", "fullRocker",
                       "earlyRise", "tipRocke", "torsionalStiffness",
                       "flexPattern", "edgeControl","ertva","ertjiu","wushiou","sanfji"]
        diamondStone.append("qishiba")
        diamondStone.append("jiushisi")
        diamondStone.forEach { handler in
            sidecountry.configuration.userContentController.add(self, name: handler)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        pillowLineView.startAnimating()
       
        cocupCrystalers()
        
       
        longitudinalFlexration()
        if  let requestURL = URL(string: leaglePath ) {
            sidecountry.load(URLRequest(url: requestURL))
        }
    }

    private func longitudinalFlexration() {
        let config = sidecountry.configuration
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        config.allowsAirPlayForMediaPlayback = false
        
        sidecountry.navigationDelegate = self
        sidecountry.uiDelegate = self
        sidecountry.scrollView.configureScrollBehavior()
    }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.executeAfterDelay(seconds: 2) { [weak self] in
                    
            self?.toggleWebViewVisibility()
            self?.pillowLineView.stopAnimating()
               
        }
        
    }
    
    
    private func toggleWebViewVisibility()  {
        self.sidecountry?.isHidden = false
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        processMessage(message)
    }
    
    
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        dawnPatrolLbl.isHidden = false
        dawnPatrolLbl.text = "    \(information)   "
        dawnPatrolLbl.backgroundColor = UIColor.white
        dawnPatrolLbl.layer.cornerRadius = 10
            dawnPatrolLbl.numberOfLines = 0
        dawnPatrolLbl.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        DispatchQueue.main.executeAfterDelay(seconds:  1) {
            self.dawnPatrolLbl.isHidden = true
        }
    }
}
 extension UIScrollView {
    func configureScrollBehavior() {
        bounces = false
        contentInsetAdjustmentBehavior = .never
    }
}


 extension DispatchQueue {
    func executeAfterDelay(seconds: Double, work: @escaping () -> Void) {
        asyncAfter(deadline: .now() + seconds, execute: DispatchWorkItem(block: work))
    }
}


extension ResortBoundController{
    
    private func processMessage(_ message: WKScriptMessage) {
            switch message.name {
            case "flatCamber":
                handlePurchaseMessage(message)
            case "fullRocker":
                handleNavigationMessage(message)
            case "tipRocke", "flexPattern":
                handleBackNavigation()
            case "torsionalStiffness":
                resetApplicationState()
            case "edgeControl":
                handlePhoneCall(message)
            default:
                print("Unhandled message: \(message.name)")
            }
        }
    
}


extension ResortBoundController{
    func handlePurchaseMessage(_ message: WKScriptMessage) {
        guard let productID = message.body as? String else { return }
        
        self.initiatePurchase(productID: productID)
        
    }
        
        func initiatePurchase(productID: String) {
            self.view.isUserInteractionEnabled = false
            self.pillowLineView.startAnimating()
            PutAccessory.shared.timberline(topo: productID) { zhuhua in
                self.pillowLineView.stopAnimating()
                self.view.isUserInteractionEnabled = true
                switch zhuhua{
                    
                case .success():
                    self.processSuccessfulPurchase()
                case .failure(let mkki):
                    self.showingSKIStatu(information: mkki.localizedDescription, isOKAYSHowi: false)
                }
            }
            
        }
        
      
        
        func processSuccessfulPurchase() {
           
            
            showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "pwaxyg qsoutcbcqeushstffuolx!"), isOKAYSHowi: true)
                    
            self.sidecountry?.evaluateJavaScript("hybridCamber()", completionHandler: nil)
        }
        
        func handlePurchaseError(_ error: SKError) {
            guard error.code != .paymentCancelled else { return }
            showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
        }
}



private extension ResortBoundController {
    func handleNavigationMessage(_ message: WKScriptMessage) {
        guard let parameter = message.body as? String else { return }
        navigateToResortController(with: parameter)
    }
    
    func navigateToResortController(with parameter: String) {
         
        navigateTo(ResortBoundController(secretSpot: .whiteout, localsOnly: parameter))
    }
    
    func handleBackNavigation() {
        guard !shouldDismissInsteadOfPop() else {
            dismiss(animated: true)
            return
        }
        navigationController?.popViewController(animated: true)
    }
    
    func shouldDismissInsteadOfPop() -> Bool {
        return blowerPow == .mountainCode || blowerPow == .snowPact
    }
}



private extension ResortBoundController {
    func resetApplicationState() {
        UserDefaults.standard.removeObject(forKey: "coreShot")
        resetRootViewController()
    }
    
    func resetRootViewController() {
        let storyboard = UIStoryboard(name: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Miapicn"), bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "railSlide") as! BoxJumpController
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = controller
    }
    
    func handlePhoneCall(_ message: WKScriptMessage) {
        guard let phoneNumber = message.body as? String,
              let url = URL(string: "telprompt://\(phoneNumber)"),
              UIApplication.shared.canOpenURL(url) else {
            
            showingSKIStatu(information: RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "Uonlatbzlced jtwol lmnaskpeu qpshsognaew ncoawlhlts"), isOKAYSHowi: false)
          
            return
        }
        
        UIApplication.shared.open(url)
    }
}
