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
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    //    var name: String?
//    var bounty: Int?
    
//    var bountyInfo: BountyInfo?
    
    var viewmodel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
        perpareAnimation()
}
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
        
    }
    
    private func perpareAnimation(){
//        nameLabelCenterX.constant = view.bounds.width
//        bountyLabelCenterX.constant = view.bounds.width
        
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        bountyLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        nameLabel.alpha = 0
        bountyLabel.alpha = 0
    }
    private func showAnimation(){
        nameLabelCenterX.constant = 0
        bountyLabelCenterX.constant = 0
        
//        UIView.animate(withDuration: 0.3, animations: self.view.layoutIfNeeded)
        
//        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: self.view.layoutIfNeeded, completion: nil)
        
//        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: self.view.layoutIfNeeded, completion: nil)
//        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: { self.nameLabel.transform = CGAffineTransform.identity
            self.bountyLabel.transform = CGAffineTransform.identity}, completion: nil)
        self.nameLabel.alpha = 1
        self.bountyLabel.alpha = 1
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
       
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

