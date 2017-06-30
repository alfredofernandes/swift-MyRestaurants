//
//  RestaurantTableViewCell.swift
//  MyRestaurants
//
//  Created by Alfredo Fernandes on 2017-06-27.
//  Copyright © 2017 Alfredo Fernandes. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    // MARK: Proprieties
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet var restaurantImage: UIImageView!
    @IBOutlet var rateTotal: RatingControl!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
