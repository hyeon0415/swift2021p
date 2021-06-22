//
//  ClosureDetailViewController.swift
//  passingData
//
//  Created by 양현 on 2021/06/22.
//

import UIKit

class ClosureDetailViewController: UIViewController {
    
   
    var myClosure: ((String) -> Void)?
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
  
    }
  
    @IBAction func closurePassData(_ sender: Any) {
       
        // 호출부 
        myClosure?("closure string")
        self.dismiss(animated: true, completion: nil)
    }
    


}
