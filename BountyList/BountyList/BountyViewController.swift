//
//  BountyViewController.swift
//  BountyList
//
//  Created by 양현 on 2021/06/11.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
    
   //UITableViewDateSource 몇개니, 어떻게 표현할꺼니
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               as? ListCell else {
        return UITableViewCell()
       }

        

        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        cell.upadte(info: bountyInfo)

        return cell

    }
    //UITableViewDelegate  when clicked
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
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
