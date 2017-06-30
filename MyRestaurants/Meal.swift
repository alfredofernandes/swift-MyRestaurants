//
//  Meal.swift
//  MyRestaurants
//
//  Created by Alfredo Fernandes on 2017-06-22.
//  Copyright © 2017 Alfredo Fernandes. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    private var name: String
    private var image: UIImage!
    private var comment: String!
    private var ratePresentation: Int
    private var rateFlavor: Int
    private var ratePrice: Int
    private var rateTotal: Int
    
    init(name: String, image: UIImage!, comment: String!, ratePresentation: Int, rateFlavor: Int, ratePrice: Int, rateTotal: Int) {
        self.name = name
        self.image = image
        self.comment = comment
        self.ratePresentation = ratePresentation
        self.rateFlavor = rateFlavor
        self.ratePrice = ratePrice
        self.rateTotal = rateTotal
    }
    
    public func setName(_ value: String) {
        if (name.isEmpty) {
            self.name = " "
        } else {
            self.name = value
        }
    }
    
    public func getName() -> String {
        return self.name
    }
    
    public func setImage(_ value: UIImage!) {
        self.image = value
    }
    
    public func getImage() -> UIImage {
        return self.image
    }
    
    public func setComment(_ value: String!) {
        self.comment = value
    }
    
    public func getComment() -> String {
        return self.comment
    }
    
    public func setRatePresentation(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.ratePresentation = value
        } else if (value > 5) {
            self.ratePresentation = 5
        } else{
            self.ratePresentation = 0
        }
    }
    
    public func getRatePResentation() -> Int {
        return self.ratePresentation
    }
    
    public func setRateFlavor(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.rateFlavor = value
        } else if (value > 5) {
            self.rateFlavor = 5
        } else{
            self.rateFlavor = 0
        }
    }
    
    public func getRateFlavor() -> Int {
        return self.rateFlavor
    }
    
    public func setRatePrice(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.ratePrice = value
        } else if (value > 5) {
            self.ratePrice = 5
        } else{
            self.ratePrice = 0
        }
    }
    
    public func getRatePrice() -> Int {
        return self.ratePrice
    }
    
    public func setRateTotal(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.rateTotal = value
        } else if (value > 5) {
            self.rateTotal = 5
        } else{
            self.rateTotal = 0
        }
    }
    
    public func getRateTotal() -> Int {
        return self.rateTotal
    }
}
