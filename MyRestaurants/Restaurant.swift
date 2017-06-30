//
//  Restaurant.swift
//  MyRestaurants
//
//  Created by Alfredo Fernandes on 2017-06-22.
//  Copyright © 2017 Alfredo Fernandes. All rights reserved.
//

import UIKit

class Restaurant {
    
    //MARK: Properties
    private var name: String
    private var image: UIImage!
    private var address: String!
    private var comment: String!
    private var rateLocation: Int
    private var rateAttendance: Int
    private var rateCleaning: Int
    private var rateTotal: Int
    private var breakfast: Meal!
    private var lunch: Meal!
    private var dinner: Meal!
    
    init(name: String, image: UIImage!, address: String!, comment: String!, location: Int, attendance: Int, cleaning: Int, total: Int, breakfast: Meal!, lunch: Meal!, dinner: Meal!) {
        self.name = name
        self.image = image
        self.address = address
        self.comment = comment
        self.rateLocation = location
        self.rateAttendance = attendance
        self.rateCleaning = cleaning
        self.rateTotal = total
        self.breakfast = breakfast
        self.lunch = lunch
        self.dinner = dinner
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
    
    public func getImage() -> UIImage! {
        return self.image
    }
    
    public func setAddress(_ value: String!) {
        self.address = value
    }
    
    public func getAddress() -> String {
        return self.address
    }
    
    public func setComment(_ value: String!) {
        self.comment = value
    }
    
    public func getComment() -> String {
        return self.comment
    }
    
    public func setRateLocation(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.rateLocation = value
        } else if (value > 5) {
            self.rateLocation = 5
        } else{
            self.rateLocation = 0
        }
    }
    
    public func getRateLocation() -> Int {
        return self.rateLocation
    }
    
    public func setRateAttendance(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.rateAttendance = value
        } else if (value > 5) {
            self.rateAttendance = 5
        } else{
            self.rateAttendance = 0
        }
    }
    
    public func getRateAttendance() -> Int {
        return self.rateAttendance
    }
    
    public func setRateCleaning(_ value: Int) {
        if (value >= 0 && value <= 5) {
            self.rateCleaning = value
        } else if (value > 5) {
            self.rateCleaning = 5
        } else{
            self.rateCleaning = 0
        }
    }
    
    public func getRateCleaning() -> Int {
        return self.rateCleaning
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
    
    public func setBreakfast(_ value: Meal!) {
        self.breakfast = value
    }
    
    public func getBreakfast() -> Meal {
        return self.breakfast!
    }
    
    public func setLunch(_ value: Meal!) {
        self.lunch = value
    }
    
    public func getLunch() -> Meal {
        return self.lunch!
    }
    
    public func setDinner(_ value: Meal!) {
        self.dinner = value
    }
    
    public func getDinner() -> Meal {
        return self.dinner!
    }
}
