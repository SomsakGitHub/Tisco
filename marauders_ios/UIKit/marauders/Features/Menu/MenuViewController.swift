//
//  MenuViewController.swift
//  marauders
//
//  Created by somsak on 29/12/2566 BE.
//

import UIKit

class MenuViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout(_ sender: Any) {
        self.initRootScene(storyboardName: .main)
    }
    
    @IBAction func setToTwoView(_ sender: Any) {
        //self.navigationController?.popToViewController(ofClass: TwoPushViewController.self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
