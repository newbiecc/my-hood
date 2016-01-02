//
//  ViewController.swift
//  my-hood
//
//  Created by Ching Kim Fu Cliff on 1/2/16.
//  Copyright © 2016 Ching Kim Fu Cliff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {    //1
    
    @IBOutlet weak var tableView: UITableView!                                          //2

    var posts = [Post]()                                                                    //3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self                                                              //4
        tableView.dataSource = self                                                            //5
        // tableView.estimatedRowHeight = 87 , flexible with the contraint in storyboard, heighForRowIndexPath not required if this is used
        
        //For testing
        var post = Post(imagePath: "", title: "Post 1", description:  "post 1 description")
        var post2 = Post(imagePath: "", title: "Post 2", description:  "post 2 description")
        var post3 = Post(imagePath: "", title: "Post 3", description:  "post 3 description")
        
        posts.append(post)   //For testing  
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData() //For testing
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {                       //6
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {   //
        // Create a custom table view cell since we cannot just drag it as IBOutlet 
        let post = posts[indexPath.row]  // indexPath.row give the numeber we are asking for
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell { //"PostCell" is the name of the reuse identifier , the second PostCell is a class type
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat { //7
        return 87.0     // The height of the tableView in your view controller
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {             //8
        return posts.count
    }
}

