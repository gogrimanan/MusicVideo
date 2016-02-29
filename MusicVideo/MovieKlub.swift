//
//  MusicVideo.swift
//  MusicVideo
//
//  Created by Michael Rudowsky on 9/10/15.
//  Copyright © 2015 Michael Rudowsky. All rights reserved.
//

import Foundation

class Videos1 {
    
    // Data encapsulation
    private var _vTitle:String
    private var _vGenre:String
    private var _vImageUrl:String
    private var _vCast:String
    private var _vVideoUrl:String
    private var _vPlot:String
    private var _vDirector:String
    private var _vReleaseDate:String
    
    // This variable gets created from the UI
    var vImageData:NSData?
    
    //Make a getter
    
    var vTitle: String {
        return _vTitle
    }
    
    var vGenre: String {
        return _vGenre
    }
    
    var vImageUrl: String {
        return _vImageUrl
    }
    var vCast: String {
        return _vCast
    }

    var vVideoUrl: String {
        return _vVideoUrl
    }
    
    var vPlot: String {
        return _vPlot
    }
    var vDirector:String {
        return _vDirector
    }
    
    var vReleaseDate:String {
        return _vReleaseDate
    }
    
    
    init(data: JSONDictionary) {
        
        
        //If we do not initialize all properties we will get error message
        //Return from initializer without initializing all stored properties
    
        
        // Video name
        if let name = data["Title"] as? String{
                self._vTitle = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vTitle = ""
        }
        if let genre = data["Genre"] as? String{
            self._vGenre = genre
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vGenre = ""
        }
        if let name = data["Poster"] as? String{
            self._vImageUrl = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vImageUrl = ""
        }
        if let name = data["Actors"] as? String{
            self._vCast = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vCast = ""
        }
        if let name = data["Youtube"] as? String{
            self._vVideoUrl = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vVideoUrl = ""
        }
        if let name = data["Plot"] as? String{
            self._vPlot = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vPlot = ""
        }
        if let name = data["Director"] as? String{
            self._vDirector = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vDirector = ""
        }
        if let name = data["Released"] as? String{
            self._vReleaseDate = name
        }
        else
        {
            //You may not always get data back from the JSON - you may want to display message
            // element in the JSON is unexpected
            
            _vReleaseDate = ""
        }
            
    }
    
}