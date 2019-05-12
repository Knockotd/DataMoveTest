//
//  ViewController.swift
//  DataMoveTest
//
//  Created by office on 12/05/2019.
//  Copyright © 2019 수리. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //storyboard 연결 변수
    @IBOutlet weak var lblFirstView: UILabel!
    
    //하위 SecondViewController로부터 데이터를 받을 프로퍼티
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        if name.count > 0{
        lblFirstView.text = name
        }
        
    }

    @IBAction func moveSecondView(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        
        let secondView = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //하위 SecondViewController에 데이터 전달
        secondView.data = "시원한 아메리카노"
        
        self.present(secondView, animated: true)
    }
    
    @IBAction func moveSegue(segue:UIStoryboardSegue){
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        name = appDelegate.shareData
    }
    
    
    //세그웨이를 이용해서 이동할 때 호출되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //이동할 ViewController의 참조를 생성
        let second = segue.destination as! SecondViewController
        second.data = "졸립다."
    }
 
}

