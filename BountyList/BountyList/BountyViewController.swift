//
//  BountyViewController.swift
//  BountyList
//
//  Created by 양현 on 2021/06/11.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    //MVVM
    
    //Model
    // - BountyInfo
    // > BountyInfo 만들자
    
    //View
    // - ListCell
    // > ListCell 필요한 정보를 ViewModel에서 받아야 겠다.
    // > ListCell은 ViewModel로 부터 받은 정보로 뷰 업데이트 하기
    
    //ViewModel
    // - BountyViewModel
    // > BountyViewModel 만들고, 뷰 레이어드에서 필요한 메서드 만들기
    // > 모델 가지고 있기  ,, bountyInfo들
    

    let viewModel = BountyViewModel()
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //detailViewController에게 데이터 주기
        if segue.identifier == "showDetail"{
           let vc =  segue.destination as? DetailViewController
            if let index = sender as? Int{

                let bountyInfo = viewModel.bountyInfo(at: index)

                vc?.viewmodel.update(model: bountyInfo)

            }
           
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
//        UICollectionViewDataSource,
        // 몇개를 보여줄까요
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
        // 셀은 어떻게 표현할까요
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as? GridCell else{
            return UICollectionViewCell()
        }
        
                let bountyInfo = viewModel.bountyInfo(at: indexPath.item)
                cell.upadte(info: bountyInfo)
        cell.upadte(info: bountyInfo)
        return cell
    }
        
//        UICollectionViewDelegate,
        // 셀이 클릭되었을때 어쩔까요
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
                print("---> \(indexPath.row)")
                performSegue(withIdentifier: "showDetail", sender: indexPath.item)
    }
        
//        UICollectionViewDelegateFlowLayout
        // 셀 사이즈를 계산할거다. (다양한 디바이스에서 일관적인 디자인을 보여주기 위해)

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing: CGFloat = 10
        let textAreaHeight: CGFloat = 65
        
       
        let width: CGFloat = (collectionView.bounds.width - itemSpacing)/2
        let height: CGFloat = width * 10/7 + textAreaHeight
        return CGSize(width: width, height: height)
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func upadte(info: BountyInfo){
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}

class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000),
    ]
    
    var  sortedList: [BountyInfo]{
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
        return sortedList
    }
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
        return sortedList[index]
    }
}

class GridCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func upadte(info: BountyInfo){
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}
