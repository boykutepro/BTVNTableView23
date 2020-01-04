//
//  CustomCellByXib.swift
//  TableViewCellPractice
//
//  Created by Thiện Tùng on 1/3/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class CustomCellByXib: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var likeBut: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.backgroundColor = .blue
        likeBut.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: #selector(like)))
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func like() {
        if likeBut.image == UIImage(named: "heart") {
            likeBut.image = UIImage(named: "unheart")
        } else {
            likeBut.image = UIImage(named: "heart")
        }
        
        
    }
    
    
}
