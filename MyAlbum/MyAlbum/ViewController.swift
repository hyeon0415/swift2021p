//
//  ViewController.swift
//  MyAlbum
//
//  Created by 양현 on 2021/06/02.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0

    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       refresh()
        
    }

    @IBAction func showAlert(_ sender: Any) {
    
    let message = "가격은 $\(currentValue)입니다."
        
    let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in self.refresh()})
        
        present(alert, animated: true, completion: nil)
        alert.addAction(action)
        
  
        
        
    }
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
            currentValue = Int(randomPrice)
            priceLabel.text = "$ \(currentValue)"
    }
    
}

