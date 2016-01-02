//
//  PostCell.swift
//  my-hood
//
//  Created by Ching Kim Fu Cliff on 1/2/16.
//  Copyright © 2016 Ching Kim Fu Cliff. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post){         // THis configure the cell not the Post 
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

}
