//
//  ViewController.swift
//  Myrecipe
//
//  Created by comsoft on 2018. 12. 4..
//  Copyright © 2018년 comsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtUrl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGo(_ sender: UIButton) {
        let myUrl = checkUrl(txtUrl.text!)
        publicUrl = myUrl
    }
    
  
    @IBAction func btntip(_ sender: UIButton) {
        publicUrl = "http://www.10000recipe.com/bbs/list.html"
    }
    func checkUrl(_ url: String)->String{
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        if !flag {
            strUrl = "http://www.10000recipe.com/bbs/list.html"
        }
        return strUrl
    }
    
}

