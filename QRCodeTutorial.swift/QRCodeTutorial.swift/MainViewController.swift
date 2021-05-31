//
//  ViewController.swift
//  QRCodeTutorial.swift
//
//  Created by 양현 on 2021/05/31.
//

import UIKit
import WebKit


class MainViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL (string: "http://www.naver.com")
                let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
    }


}

