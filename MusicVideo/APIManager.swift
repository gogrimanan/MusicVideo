//
//  APIManager.swift
//  MusicVideo
//
//  Created by Michael Rudowsky on 9/10/15.
//  Copyright © 2015 Michael Rudowsky. All rights reserved.
//

import Foundation

class APIManager {
    
    func loadData(urlString:String, completion: [Videos1] -> Void ) {
        
        
        let config = NSURLSessionConfiguration.ephemeralSessionConfiguration()
        
        let session = NSURLSession(configuration: config)
        
        
        //        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        
        let task = session.dataTaskWithURL(url) {
            (data, response, error) -> Void in
            
            if error != nil {
                
                print(error!.localizedDescription)
                
                
            } else {
                
                //Added for JSONSerialization
                //print(data)
                do {
                    /* .AllowFragments - top level object is not Array or Dictionary.
                    Any type of string or value
                    NSJSONSerialization requires the Do / Try / Catch
                    Converts the NSDATA into a JSON Object and cast it to a Dictionary */
                    
                    if let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? JSONDictionary,
//                        feed = json["feed"] as? JSONDictionary,
                        entries = json["data"] as? JSONArray {
                            
                            var videos = [Videos1]()
                            for entry in entries {
                                let entry = Videos1(data: entry as! JSONDictionary)
                                videos.append(entry)
                            }
                            
                            
                            let i = videos.count
                            print("iTunesApiManager - total count --> \(i)")
                            print(" ")
                            
                            let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
                            dispatch_async(dispatch_get_global_queue(priority, 0)) {
                                dispatch_async(dispatch_get_main_queue()) {
                                    completion(videos)
                                }
                            }
                    }
                } catch {
                    print("error in NSJSONSerialization")
                    
                }
                
            }
        }
        
        task.resume()
    }
}
