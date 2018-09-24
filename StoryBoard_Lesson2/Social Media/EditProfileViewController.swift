//
//  EditProfileViewController.swift
//  Social Media
//
//  Created by Тимур Шакиров on 18.09.2018.
//  Copyright © 2018 Тимур Шакиров. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var currentUser: User!
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRounded()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButtonTapped(_ sender: Any){
        self.dismiss(animated: true, completion: nil)
    }
    
    func makeRounded() {
        
        profilePictureImageView.layer.cornerRadius = profilePictureImageView.frame.width / 2
        profilePictureImageView.clipsToBounds = true
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        profilePictureImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func chooseProfileButtonTapped(_ sender: Any) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    
    
}
