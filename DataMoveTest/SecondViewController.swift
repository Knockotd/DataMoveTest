//
//  SecondViewController.swift
//  DataMoveTest
//
//  Created by office on 12/05/2019.
//  Copyright © 2019 수리. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //storyboard 연결 변수
    @IBOutlet weak var lblSecondView: UILabel!
    
    //상위 ViewController로부터 데이터를 받을 프로퍼티
    var data : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //상위 ViewController로부터 받은 데이터를 출력
        lblSecondView.text = data
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.shareData = "그럼 자야지"
        print(appDelegate)
        
    }
    
    @IBAction func movePrev(_ sender: Any) {
        
        //상위 ViewController의 참조 가져오기
        let parent = self.presentingViewController as! ViewController
        
        //상위 ViewController에 데이터 전달
        parent.name = "역시 원두는 케냐AA"
        
        //현재 화면을 제거
        parent.dismiss(animated: true)
        
        //self.presentingViewController?.dismiss(animated: true)
    }

}
