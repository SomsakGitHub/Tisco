//
//  TwoPushViewController.swift
//  marauders
//
//  Created by somsak02061 on 4/1/2567 BE.
//

import UIKit

class TwoPushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackToRoot(_ sender: Any) {
        self.navigationController?.popToViewController(ofClass: MenuViewController.self)
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
