//
//  ViewController.swift
//  marauders
//
//  Created by somsak on 24/10/2566 BE.
//

import UIKit
import CoreKit

class ViewController: BaseViewController {
    
    let viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print("viewDidLoad=>")
        //CoreLocationManager.shared.configureCLLocationManager()
        print("testENV=>", Config.environment.hashValue.description)
        viewModel.testApi()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //print("viewWillAppear")
        // Called before content view is added to app's view hierarchy.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //print("viewDidAppear")
        // Called after the content view is added to app's view hierarchy.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //print("viewWillDisappear")
        // Called before the content view is removed from the app's view hierarchy.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //print("viewDidDisappear")
        // Called after the content view is removed from the app's view hierarchy.
    }
    
    override func viewWillLayoutSubviews() {
        
        //print("viewWillLayoutSubviews")
        // Called when the content view's bounds change, but BEFORE it lays out ist subviews.
    }
    
    override func viewDidLayoutSubviews() {
        
        //print("viewDidLayoutSubviews")
        // Called when the content view's bounds change, but AFTER it lays out ist subviews.
    }
    
    @IBAction func loginTouch(_ sender: Any) {
        
//        let service = ServiceEnum.login(email: emain.text!, password: password.text!)
//        self.viewModel
//            .login(service: service)
//            .subscribe(onSuccess: { model in
//                print("onSuccess=>", model)
//                //self.initRootScene(storyboardName: .home)
//            }, onFailure: { error in
//                print("onFailure=>", error.localizedDescription)
//                self.initRootScene(storyboardName: .home)
//            })
//            .disposed(by: disposeBag)
        
        self.initRootScene(storyboardName: .mainTabBar)
    }
}

//class LoginViewModel: Service {
//    
//    func login(service: ServiceEnum) -> Single<LoginModel> {
//        return requestToServer(service: service)
//            .map(LoginModel.self)
//    }
//}
//
//struct LoginModel: Codable {
//    let token: String
//}
