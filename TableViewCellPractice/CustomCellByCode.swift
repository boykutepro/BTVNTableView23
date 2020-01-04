//
//  CustomCellByCode.swift
//  TableViewCellPractice
//
//  Created by Thiện Tùng on 1/3/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class CustomCellByCode: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.brown
        
        return view
    }()

    let imgView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .purple
        image.clipsToBounds = true

        return image
    } ()
    
    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        
        return label
    } ()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 17)
        label.textColor = .black
        label.numberOfLines = 20
        
        return label
    } ()
    
    let icon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    } ()
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 2)
        label.textColor = .black
        
        return label
    } ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        self.addSubview(containerView)
        containerView.addSubview(imgView)
        containerView.addSubview(label1)
        containerView.addSubview(label2)
        containerView.addSubview(icon)
        containerView.addSubview(label3)
        

        setupLayout()
    }
    
    func setupLayout(){
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        
        
        //Image
        
        imgView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        imgView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 7).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 135).isActive = true
        imgView.heightAnchor.constraint(equalTo: imgView.widthAnchor, multiplier: 1).isActive = true
        
        //Title
        label1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5).isActive = true
        label1.leftAnchor.constraint(equalTo: imgView.rightAnchor, constant: 10).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: imgView.rightAnchor, constant: 10).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 240).isActive = true
        
        //icon
        icon.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8).isActive = true
        icon.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 0).isActive = true
        label3.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10).isActive = true
        label3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        label3.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        
    }
}
