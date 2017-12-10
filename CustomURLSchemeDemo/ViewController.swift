//
//  ViewController.swift
//  CustomURLSchemeDemo
//
//  Created by Ani Adhikary on 06/12/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//  Online Tutorial
//  http://jayeshkawli.ghost.io/ios-custom-url-schemes/
//  http://swiftdeveloperblog.com/deep-linking-using-custom-url-scheme/

import UIKit

class MainViewController: UIViewController {
   
    @IBOutlet weak var scheme: UILabel!
    @IBOutlet weak var host: UILabel!
    @IBOutlet weak var queryItem: UILabel!
    @IBOutlet weak var queryItemValue: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("schemeString=======================")
        print(schemeString)
        
        print("hostString=======================")
        print(hostString)
        
        print("queryItemString=======================")
        print(queryItemString)
        
        print("queryItemValueString=======================")
        print(queryItemValueString)
        
        scheme.text = schemeString
        host.text = hostString
        queryItem.text = queryItemString
        queryItemValue.text = queryItemValueString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

