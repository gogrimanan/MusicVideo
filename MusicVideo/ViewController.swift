//
//  ViewController.swift
//  MusicVideo
//
//  Created by Michael Rudowsky on 9/10/15.
//  Copyright © 2015 Michael Rudowsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var videos = [Videos1]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call API
        let api = APIManager()
//        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json",
      api.loadData("http://www.movie-klub.com/ios.php",
            completion:didLoadData)
    }
    
    func didLoadData(videos: [Videos1]) {
        
        self.videos = videos
        
        for item in videos {
            print("name = \(item.vTitle)")
        }
        
        for (index, item) in videos.enumerate() {
            print("\(index) name = \(item.vTitle)")
        }
        
        
        //        for i in 0..<videos.count {
        //            let video = videos[i]
        //            print("\(i) name = \(video.vName)")
        //        }
        
//                for var i = 0; i < 5; i++ {
//                    let video = videos[i]
//                    print("\(i) name = \(video.vTitle)")
//                    print("\(i) name = \(video.vCast)")
//                    print("\(i) name = \(video.vDirector)")
//                    print("\(i) name = \(video.vPlot)")
//                    print("\(i) name = \(video.vImageUrl)")
//                    print("\(i) name = \(video.vVideoUrl)")
//                    print("\(i) name = \(video.vReleaseDate)")
//                    print("\(i) name = \(video.vGenre)")
//                    
//        }
        
    }
    
    
}

