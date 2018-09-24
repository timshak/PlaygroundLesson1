//
//  InfoViewController.swift
//  Social Media
//
//  Created by Тимур Шакиров on 23.09.2018.
//  Copyright © 2018 Тимур Шакиров. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITextFieldDelegate {

    var currentUser: User!
    
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    @IBOutlet weak var userAge: UILabel!
    
    @IBOutlet weak var statusField: UITextField!
    @IBOutlet weak var userBirthday: UILabel!
    @IBOutlet weak var userEducation: UILabel!
    @IBOutlet weak var userRelationship: UILabel!
    @IBOutlet weak var userLanguages: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var vkLink: UILabel!
    @IBOutlet weak var twitterLink: UILabel!
    @IBOutlet weak var instagramLink: UILabel!
    
    
    @IBOutlet weak var phonePicture: UIImageView!
    @IBOutlet weak var vkPicture: UIImageView!
    @IBOutlet weak var twitterPicture: UIImageView!
    @IBOutlet weak var instagramPicture: UIImageView!
    @IBOutlet weak var gift3: UIImageView!
    @IBOutlet weak var gift1: UIImageView!
    @IBOutlet weak var gift2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize.height = 968
        makeRounded()
        setValues()
        statusField.delegate = self
    }
    
    
    
    func makeRounded() {
        
        profilePicture.layer.cornerRadius = profilePicture.frame.width / 2
        profilePicture.clipsToBounds = true
        instagramPicture.layer.cornerRadius = instagramPicture.frame.width / 2
        instagramPicture.clipsToBounds = true
        vkPicture.layer.cornerRadius = vkPicture.frame.width / 2
        vkPicture.clipsToBounds = true
        twitterPicture.layer.cornerRadius = twitterPicture.frame.width / 2
        twitterPicture.clipsToBounds = true
    }
    
    func setValues() {
        self.title = currentUser?.firstName
        profilePicture.image = #imageLiteral(resourceName: "profilePicture")
        userName.text = "\(currentUser?.firstName ?? "") \(currentUser?.lastName ?? "")"
        userStatus.text = currentUser?.status
        userAge.text = "\(currentUser?.age ?? 20) лет, \(currentUser?.city ?? "Казань")"
        
        statusField.text = "Thinking"
        userBirthday.text = "22 июня 1941"
        userEducation.text = currentUser.education
        userLanguages.text = currentUser.language
        userPhoneNumber.text = currentUser.phoneNumber
        userRelationship.text = currentUser.relationship
        
        
        instagramLink.text = currentUser.instagramLink
        vkLink.text = currentUser.vkLink
        twitterLink.text = currentUser.twitterLink
        
        phonePicture.image = #imageLiteral(resourceName: "phonePic")
        vkPicture.image = #imageLiteral(resourceName: "vkPic")
        twitterPicture.image = #imageLiteral(resourceName: "twitterPic")
        instagramPicture.image = #imageLiteral(resourceName: "instagramPic")
        
        gift1.image = #imageLiteral(resourceName: "giftPic1")
        gift2.image = #imageLiteral(resourceName: "giftPic2")
        gift3.image = #imageLiteral(resourceName: "giftPic3")
    }
}

