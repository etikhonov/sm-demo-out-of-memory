import Foundation
import Capacitor
import smcamera_ios
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ExamplePlugin)
public class ExamplePlugin: CAPPlugin {
    
    @objc func echo(_ call: CAPPluginCall) {
        let vc = self.bridge?.viewController
        if vc != nil{
            let storyboard = UIStoryboard(name: "MainPlugin", bundle: Bundle(for: MainPluginVC.self))

            DispatchQueue.main.async {
                if let viewController = storyboard.instantiateViewController(withIdentifier: "MainPluginVC") as? MainPluginVC {
                    viewController.call = call
                    let nav = UINavigationController(rootViewController: viewController)
                    nav.setToolbarHidden(true, animated: true)
                    nav.setNavigationBarHidden(true, animated: true)
                    nav.modalPresentationStyle = .fullScreen
                    vc!.present(nav, animated: true)
                }
            }
        }
        else {
            call.reject("viewController undefined")
        }
        
    }
    
}

