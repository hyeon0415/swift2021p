//
//  delegateDetailViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/21.
//

import UIKit

protocol DelegateDetailViewCOntrollerDelegate: AnyObject {
    func passString(string: String)
}

class delegateDetailViewController: UIViewController {

    
    weak var delegate: DelegateDetailViewCOntrollerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func passDataToMainVC(_ sender: Any) {
        delegate?.passString(string: "pass Data")
        self.dismiss(animated: true, completion: nil)
    }
    

}
