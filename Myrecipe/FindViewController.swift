//
//  FindViewController.swift
//  Myrecipe
//
//  Created by comsoft on 2018. 12. 4..
//  Copyright © 2018년 comsoft. All rights reserved.
//

import UIKit

var publicUrl = "http://www.10000recipe.com";

class FindViewController: UIViewController,

UIWebViewDelegate {
    @IBOutlet var myWebView: UIWebView!
    @IBOutlet var myActivity: UIActivityIndicatorView!
    
    func loadWebPage(_ url:String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.loadRequest(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate=self
        loadWebPage(publicUrl)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        myActivity.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myActivity.stopAnimating()
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
