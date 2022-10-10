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
        imageView.image = UIImage(systemName: "house")
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
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        imageView.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
        myLabel.frame = CGRect(x: 10, y: 134, width: 120, height: 40)
    }
    
    func config(label: String){
        myLabel.text = label
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
    }
}
