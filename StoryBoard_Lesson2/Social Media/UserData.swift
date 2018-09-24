//
//  UserData.swift
//  Social Media
//
//  Created by Тимур Шакиров on 22.09.2018.
//  Copyright © 2018 Тимур Шакиров. All rights reserved.
//

import Foundation

struct User {
    var firstName: String
    var lastName: String
    var age: Int
    var status: String
    var city: String
    var profilePicture: String
    var phoneNumber: String
    var education: String
    var relationship: String
    var language: String
    let instagramLink: String = "instagram.com"
    let twitterLink: String = "twitter.com"
    let vkLink: String = "vk.com"
}

func getRandomUser() -> User {
    return User.init(firstName:firstNames[Int(arc4random_uniform(UInt32(firstNames.count)))],lastName: lastNames[Int(arc4random_uniform(UInt32(lastNames.count)))],age: ages[Int(arc4random_uniform(UInt32(ages.count)))],status: statuses[Int(arc4random_uniform(UInt32(statuses.count)))],city: cities[Int(arc4random_uniform(UInt32(cities.count)))],profilePicture: pics[Int(arc4random_uniform(UInt32(pics.count)))],phoneNumber: numbers[Int(arc4random_uniform(UInt32(numbers.count)))],education: university[Int(arc4random_uniform(UInt32(university.count)))], relationship:relations[Int(arc4random_uniform(UInt32(relations.count)))],language: languages[Int(arc4random_uniform(UInt32(languages.count)))])
}

let firstNames = ["Тимур", "Лиза", "Серега", "Дэн"]
let lastNames = ["Шакиров", "Самойлова", "Исмагилов"]
let relations = ["Влюблен", "Все сложно"]
let ages = [15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
let cities = ["Казань", "Чебоксары", "Сочи", "Нью-Йорк"]
let statuses = ["online (моб.)", "заходил 39 минут назад"]
let pics = ["pic1", "pic2", "pic3"]
let numbers = ["+43247902742", "+78432282828", "+93740330***"]
let university = ["КФУ", "Иннополис", "Гарвард"]
let languages = ["Русский","Английский"]
