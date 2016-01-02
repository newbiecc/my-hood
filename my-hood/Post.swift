//
//  Post.swift
//  my-hood
//
//  Created by Ching Kim Fu Cliff on 1/2/16.
//  Copyright © 2016 Ching Kim Fu Cliff. All rights reserved.
//

import Foundation

class Post {

    private var imagePath: String
    private var title: String
    private var postDesc: String // Post Description
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}