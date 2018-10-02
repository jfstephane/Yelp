//
//  BusinessCell.swift
//  Yelp
//
//  Created by Jules Frantz Stephane Loubeau on 10/1/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var ratingView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var categorieLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    
    var business: Business! {
        
        didSet{
            nameLabel.text = business.name;
            thumbView.setImageWith(business.imageURL!);
            categorieLabel.text = business.categories
            adressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews";
            ratingView.image = (business.ratingImage)
            distanceLabel.text = business.distance
           
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbView.layer.cornerRadius = 5
        thumbView.clipsToBounds = true;
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
