//
//  SegueDetailViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/21.
//

import UIKit

class SegueDetailViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    var dataString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = dataString
    }
    



}
