//
//  AppDelegate.swift
//  CustomURLSchemeDemo
//
//  Created by Ani Adhikary on 06/12/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//

import UIKit

var schemeString = ""
var hostString = ""
var queryItemString = ""
var queryItemValueString = ""

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainVC: MainViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if let vc = application.windows[0].rootViewController as? MainViewController {
            mainVC = vc
            print(vc)
        }
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        //cust://iosdev?lang=swift
        
        if (url.scheme  == "cust") {
            if let urlScheme = url.scheme, let urlhost = url.host {
                schemeString = urlScheme //cust
                hostString = urlhost //iosdev
            }
            
            let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false)
//            guard let items = (urlComponents?.queryItems) as! [URLQueryItem] else {
//                return false
//            }
            
            guard let items = (urlComponents?.queryItems) else {
                return false
            }
            
            if let item = items.first, let propertyName = items.first?.name, let propertyValue = items.first?.value {
                print(item) //lang=swift
                print(propertyName) //lang
                print(propertyValue) //swift
                queryItemString = propertyName
                queryItemValueString = propertyValue
                
                mainVC?.viewWillAppear(true)
                
            }
        }
        return false
    }
}

