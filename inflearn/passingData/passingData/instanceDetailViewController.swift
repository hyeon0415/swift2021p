//
//  instanceDetailViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/21.
//

import UIKit

class instanceDetailViewController: UIViewController {
    
    var mainVC: ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func sendDataMainVC(_ sender: Any) {
        mainVC?.dataLabel.text = "some data"
        self.dismiss(animated: true, completion: nil)
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
