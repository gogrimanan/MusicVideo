//
//  ViewController.swift
//  MusicVideo
//
//  Created by Manan Gogri on 2/27/16.
//  Copyright © 2016 Manan Gogri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        //Call API
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json",
//       api.loadData("http://www.movie-klub.com/ios.php",
            completion: didLoadData)
    }

    func didLoadData(result:String) {
//        print(result)

        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .
            Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .Default){ action -> Void in
            //do something
        }
        
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

