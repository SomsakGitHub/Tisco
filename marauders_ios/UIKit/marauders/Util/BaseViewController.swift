//
//  BaseViewController.swift
//  marauders
//
//  Created by somsak on 24/10/2566 BE.
//

import UIKit

class BaseViewController: UIViewController {
    
    private final let sceneDelegate = (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)
    
    //let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func initRootScene(storyboardName: StoryboardEnum) {
        
        guard let window = sceneDelegate?.window else {
            return
        }
        
        window.rootViewController = UIStoryboard(name: storyboardName.rawValue, bundle: nil).instantiateInitialViewController()
        
        UIView.transition(with: window,
                          duration: 0.5,
                          options: [.transitionFlipFromLeft],
                          animations: nil,
                          completion: nil)
    }
    
    func alert(title: String, completion:@escaping (Bool) -> Void){
        let alert = UIAlertController(title: title, message: "", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            completion(true)
        }))

        self.present(alert, animated: true)
    }
    
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            motionShakeAction()
        }
    }
    
    open func motionShakeAction() {
//        LocalNotification.post(for: .deviceDidShake)
        print("motionShakeAction=>")
    }
}
