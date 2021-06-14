//
//  DetailViewController.swift
//  BountyList
//
//  Created by 양현 on 2021/06/14.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MVVM
    
    //Model
    // - BountyInfo
    // > BountyInfo 만들자
    
    //View
    // - imgView, nameLabel, bountyLabel
    // > view들은 viewModel을 통해서 구성되기
    // > ListCell은 ViewModel로 부터 받은 정보로 뷰 업데이트 하기
    
    //ViewModel
    // - detailViewModel
    // >  뷰 레이어드에서 필요한 메서드 만들기
    // > 모델 가지고 있기  ,, bountyInfo들
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
//    var name: String?
//    var bounty: Int?
    
//    var bountyInfo: BountyInfo?
    
    var viewmodel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
       
    }
    
    func updateUI() {
        if let bountyInfo = self.viewmodel.bountyInfo{
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
}
    

    @IBAction func close(_ sender: Any) { dismiss(animated: true, completion: nil)
    }
    

}
class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model 
    }
}

