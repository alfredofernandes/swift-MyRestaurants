//
//  MealViewController.swift
//  MyRestaurants
//
//  Created by Alfredo Fernandes on 2017-06-20.
//  Copyright © 2017 Alfredo Fernandes. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var lblMealName: UILabel!
    @IBOutlet weak var txtMealName: UITextField!
    @IBOutlet weak var imgMeal: UIImageView!
    @IBOutlet weak var txtCommentMeal: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting the delegates
        txtMealName.delegate = self
        txtCommentMeal.delegate = self
        
        // Setting the text view's border
        self.txtCommentMeal.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor;
        self.txtCommentMeal.layer.borderWidth = 1.0;
        self.txtCommentMeal.layer.cornerRadius = 8;
    }
    
    // MARK: Action
    @IBAction func btnDefaultTextMeal(_ sender: UIButton) {
        lblMealName.text = "Default Name"
    }
    
    @IBAction func selectMealImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        txtMealName.resignFirstResponder()
        txtCommentMeal.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //MARK: Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        lblMealName.text = txtMealName.text
    }
    
    // Dismiss the text view keyboard, when the user types "Done"
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n"  // Recognizes enter key in keyboard
        {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    // MARK: Image View Delegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Takes the original image
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            // Set photoImageView to display the selected image.
            imgMeal.image = selectedImage
            
            // Dismiss the picker.
            dismiss(animated: true, completion: nil)
            
        }else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
    }
}
