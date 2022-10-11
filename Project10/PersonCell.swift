//
//  PersonCell.swift
//  Project10
//
//  Created by Saurabh Agarwal on 10/10/22.
//

import UIKit

class PersonCell: UICollectionViewCell {
    
    static let identifier = "person"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        imageView.layer.borderWidth = 2
        imageView.layer.cornerRadius = 3
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.font = UIFont(name: "Marker Felt", size: 16)
        myLabel.textAlignment = .center
        return myLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(myLabel)
        layer.cornerRadius = 7
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        imageView.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
        myLabel.frame = CGRect(x: 10, y: 134, width: 120, height: 40)
    }
    
    func config(label: String, image:String){
        myLabel.text = label
        imageView.image = UIImage(contentsOfFile: image)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
    }
}
