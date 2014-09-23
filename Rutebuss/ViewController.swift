//
//  ViewController.swift
//  Rutebuss
//
//  Created by Simen Johannessen on 28/08/14.
//  Copyright (c) 2014 Simen Johannessen. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UIWebViewDelegate {
    var tempView: UIView
    @IBOutlet var webview: UIWebView!
    
    required init(coder aDecoder: NSCoder)
    {
        self.tempView = PlaceHolderUIView(frame: CGRectMake(0.0, 0.0, 100.0, 100.0))
        super.init(coder: aDecoder)

    }   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let url = NSURL(string: "http://rutebuss.no")
        let request = NSURLRequest(URL: url)
//        self.webview.scalesPageToFit = false
        self.webview.multipleTouchEnabled = false
        self.webview.loadRequest(request)
        self.webview.backgroundColor = UIColor.whiteColor()
        self.webview.delegate = self
        self.tempView = PlaceHolderUIView.loadFromNibNamed("PlaceHolderView")
        self.view.addSubview(self.tempView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
    
    }

    func webViewDidFinishLoad(webView: UIWebView)
    {
        self.tempView.removeFromSuperview();
    }
}

