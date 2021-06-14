//
//  DetailViewController.swift
//  BountyList
//
//  Created by 양현 on 2021/06/14.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
       
    }
    
    func updateUI() {
        if let name = self.name, let bounty = self.bounty{
            let img = UIImage(named: "\(name).JPG" )
            imgView.image = img
                nameLabel.text = name
                bountyLabel.text = "\(bounty)"
        }
        
       
    }
    

    @IBAction func close(_ sender: Any) { dismiss(animated: true, completion: nil)
    }
    

}
