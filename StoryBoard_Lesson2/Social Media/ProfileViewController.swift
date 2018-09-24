//
//  ProfileViewController.swift
//  Social Media
//
//  Created by Тимур Шакиров on 23.09.2018.
//  Copyright © 2018 Тимур Шакиров. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    @IBOutlet weak var userAge: UILabel!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
  
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = getRandomUser()
        designProfile()
    }
    @IBAction func infoButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailInfo" {
            if let destinationVC = segue.destination as? InfoViewController {
                destinationVC.currentUser = user
            }
        }
    }
    

    
    func designProfile() {
        
        
      profilePicture.layer.cornerRadius = profilePicture.frame.width / 2
        profilePicture.clipsToBounds = true
        
        self.title = user?.firstName
        profilePicture.image = #imageLiteral(resourceName: "profilePicture")
        userName.text = "\(user?.firstName ?? "") \(user?.lastName ?? "")"
        userStatus.text = user?.status
        userAge.text = "\(user?.age ?? 0) лет, \(user?.city ?? "Казань")"
    }
    
    
}

