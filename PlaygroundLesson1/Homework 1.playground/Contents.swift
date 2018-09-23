//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

// Task 2. Game
//Не сделал поле битвы
//ввел классы, поля,атаку и смерть игрока

class Unit {
    var agility: Int = 0
    var nickname: String = ""
    var defence: Int = 0
    var damage: Int = 0
    var hp: Int = 0
    var isAlive : Bool = false
    init(agility: Int, nickname: String, defence: Int, damage: Int, hp: Int) {
        self.agility = agility
        self.nickname = nickname
        self.defence = defence
        self.damage = damage
        self.hp = hp
    }
    func attack(toEnemy: Unit){
        toEnemy.hp=toEnemy.hp*defence-(damage*agility)
        }
    func playerHp() {
        if hp <= 0 {
            print("Игрок \(nickname) откинулся")
            isAlive = true
        } else {
            print("Здоровье игрока \(nickname) - \(hp)")
        }
    }
    
}
    

class Assasin:Unit {
    override init(agility: Int, nickname: String, defence: Int, damage: Int, hp: Int) {
        super.init(agility: agility, nickname: nickname, defence: defence, damage: damage, hp: hp)
    }
}
class Mage:Unit {
    override init(agility: Int, nickname: String, defence: Int, damage: Int, hp: Int) {
        super.init(agility: agility, nickname: nickname, defence: defence, damage: damage, hp: hp)
    }
}
class Warrior:Unit {
    override init(agility: Int, nickname: String, defence: Int, damage: Int, hp: Int) {
        super.init(agility: agility, nickname: nickname, defence: defence, damage: damage, hp: hp)
    }
}
class WarZone {
    
}
let p1 = Assasin(agility: 67, nickname: "Batya116", defence: 23, damage: 56, hp: 300)
let p2 = Mage(agility: 24, nickname: "Medivh", defence: 10, damage: 70, hp: 270)
let p3 = Warrior(agility: 10, nickname: "Daun228", defence: 70, damage: 35, hp: 400)


let battlefield  = WarZone()

//---------------------------------------
//trim method
func mytrim(word: String, letter: String) -> String {
    var a: String = ""
    for index in 0 ..< word.count {
        let i = word.index(word.startIndex/*Позиция первого символа в непустой строке.*/, offsetBy: index)/*Возвращает индекс, который является указанным расстоянием от данного индекса.*/
        
        let current = String(word[i])
        if current != letter {
            a += current
        }
    }
    return a
}

print(mytrim(word: "Hello, world", letter: "o"))
