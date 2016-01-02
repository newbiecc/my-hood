//
//  Post.swift
//  my-hood
//
//  Created by Ching Kim Fu Cliff on 1/2/16.
//  Copyright © 2016 Ching Kim Fu Cliff. All rights reserved.
//

import Foundation

class Post {                    //9

    private var _imagePath: String
    private var _title: String
    private var _postDesc: String // Post Description
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }
    

}