
// passing data (데이터를 넘겨주는 방법)
// 6가지

// 1. instance property
// 2. segue
// 3. instance
// 4. delegate (delegation) pattern 대리 위임
// 5. closure
// 6. Notificaton


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationName = Notification.Name("sendSomeString")
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSomeString), name: notificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: notificationName, object: nil)
        
    }
    @objc func keyboardWillShow() {
        print("will show")
    }
    @objc func keyboardDidShow() {
        print("did show")
    }
    
  @objc  func showSomeString(notification: Notification) {
        if let str = notification.userInfo?["str"] as? String {
            self.dataLabel.text = str
        }
        
        
    }
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail"{
            // segue 목적지가 sugue디테일뷰 컨트롤러와 연결되면
            if let detailVC = segue.destination as? SegueDetailViewController {
//
                detailVC.dataString = "abcd"
            }
        }
    }

    @IBAction func moveToDetail(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.someString = "aaa 스트링"
       
        self.present(detailVC, animated: true, completion: nil)

               detailVC.someLabel.text = "bb"  
        
    }
    
    
    @IBAction func moveToInstance(_ sender: Any) {
        let detailVC = instanceDetailViewController(nibName: "instanceDetailViewController", bundle: nil)
        // 나 자신에 대한 접근을 가능하게 함
        detailVC.mainVC = self
        self.present(detailVC, animated: true, completion: nil)
    }
    @IBAction func moveToDelegate(_ sender: Any) {
        let detailVC = delegateDetailViewController(nibName: "delegateDetailViewController", bundle: nil)
        detailVC.delegate = self
        self.present(detailVC, animated: true, completion: nil)
    }
    
    @IBAction func moveToClosure(_ sender: Any) {
        let detailVC = ClosureDetailViewController(nibName: "ClosureDetailViewController", bundle: nil)
       // 구현부
        detailVC.myClosure = { str in
            self.dataLabel.text = str
        }
        self.present(detailVC, animated: true, completion: nil)
    }
    @IBAction func moveToNoti(_ sender: Any) {
        let detailVC = NotiDetailViewController(nibName: "NotiDetailViewController", bundle: nil)
        self.present(detailVC, animated: true, completion: nil)
    }
    
}

// 위 셀프는 내가 만든 델리게이트 프로토콜도 준수한다를 아래와 같이 설명 
extension ViewController: DelegateDetailViewCOntrollerDelegate{
    func passString(string: String) {
        self.dataLabel.text = string
    }
    
    
}
