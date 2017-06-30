//
//  ViewController.swift
//  MyRestaurants
//
//  Created by Alfredo Fernandes on 2017-06-19.
//  Copyright © 2017 Alfredo Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var lblRestName: UILabel!
    @IBOutlet weak var txtRestName: UITextField!
    @IBOutlet weak var imgRestaurant: UIImageView!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtComments: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        txtRestName.delegate = self
        txtAddress.delegate = self
        txtComments.delegate = self
        
        // Setting the text view's border
        self.txtComments.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor;
        self.txtComments.layer.borderWidth = 1.0;
        self.txtComments.layer.cornerRadius = 8;
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        lblRestName.text = "Set Default"
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard
        txtRestName.resignFirstResponder()
        txtAddress.resignFirstResponder()
        txtComments.resignFirstResponder()
        
        // Creating the image picker controller
        let imagePickerController = UIImagePickerController()
        
        // Defining the source of the images: the photo library
        imagePickerController.sourceType = .photoLibrary
        
        // Notify the ViewController when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    // MARK: Image View Delegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Takes the original image
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            // Set imagePhotoView to display the selected image
            imgRestaurant.image = selectedImage
            
            // Dismiss the picker
            dismiss(animated: true, completion: nil)
            
        } else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
    }
    
    // MARK: Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        lblRestName.text = txtRestName.text
    }
    
    //Dismiss the text view keyboard, when the user types "Done"
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" { // Recognizes enter key in keyboard
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "goToBreakfast":
            print(">>> Breakfast")
        case "goToLunch":
            print(">>> Lunch")
        case "goToDinner":
            print(">>> Dinner")
        default:
            print("Unknown")
        }
    }
    
    @IBAction func backToRestaurant(unwindSegue: UIStoryboardSegue) {
        print("<<< I'm back!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
