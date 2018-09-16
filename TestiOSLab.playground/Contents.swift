//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var someString = "hi"

str = "1234"
someString = "1"

var someArray: Array<String> = ["value"]
var someArray2 = [Int]()

for _ in someArray {
    print("Hello")
}

for value in someArray {
    print("\(value)")
}

for index in 0 ..< someArray.count - 1 {
    print("\(index)")
}

for value in someArray.enumerated() {
    
}

someArray.forEach { (someString) in
    print("printing")
}

someArray.forEach{ print($0) }

var someIntValue: Int? = nil

someIntValue?.signum()

if let newValue = someIntValue, newValue > 0 {
    someIntValue = someIntValue! + 1
}

if let intValue = Int(str) {
    someIntValue = intValue
}


func selectionSort(_ list:[Int]) -> [Int] {
    
    guard list.count > 1 else { return list }
    
    var mutableArray = list
    
    for index in 0 ..< mutableArray.count - 1 {
        
        var minIndex = index
        
        for nextIndex in minIndex + 1 ..< mutableArray.count {
            
            if mutableArray[minIndex] < mutableArray[nextIndex] {
                minIndex = nextIndex
            }
        }
        if index != minIndex {
            mutableArray.swapAt(index, minIndex)
        }
    }
    return mutableArray
}

let list = [1,3,5,-2,123,0]

selectionSort(list)

protocol Human {
    var name: String { get set }
    var age: Int { get set }
    
    func speakHi()
}


class User: Human {
    var name: String
    var lastName: String = ""
    var age: Int
    var value: Character = "a"
    
    static let uniqId = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init(lastName: String) {
        self.name = "Default"
        self.age = 18
        self.lastName = lastName
    }
    
    func speakHi() {
        print("Hi!")
    }
}

class OldUser: User {
    
    override func speakHi() {
        super.speakHi()
        print("second hi")
    }
}

struct Car {
    var name: String
    var cost: Double
}

let newCar = Car(name: "", cost: 1.2)


let myUser = User(lastName: "Default")

var dictionary: Dictionary<Int,Any> = [:]

dictionary[0] = "String"
dictionary[1] = 123


