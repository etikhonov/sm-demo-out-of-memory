import Foundation
import Capacitor
import smcamera_ios

class MainPluginVC: UIViewController {

    
    var call: CAPPluginCall?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let manager = CameraManager()
        let name = UUID().uuidString
        let project = manager.createProject(name: name)
        let scene = manager.createScene(name: name, project: project)
        manager.config(delegate: self, scene: scene)
        self.navigationItem.hidesBackButton = true
        DispatchQueue.main.async { [self] in
            manager.openCameraVC(with: self)
        }
    }
}

//MARK: Delegates
extension MainPluginVC: CameraManagerDelegate {
    public func sceneSaved(){
        print("SAVED")
        call!.resolve()
        call = nil
        self.navigationController?.dismiss(animated: true)
        self.dismiss(animated: true)
    }
}
