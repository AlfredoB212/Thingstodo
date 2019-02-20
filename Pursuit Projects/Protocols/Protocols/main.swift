//
//  main.swift
//  Protocols
//
//  Created by Alfredo Barragan on 11/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation


// protocols define a blueprint, protocols do not provide implementations or default state, conforming class provides implementations


protocol Food {
    // properties
     var calories: Int { get }
    var taste: Bool { get }

}
    
    


protocol Seed {
   // properties
    var plantType: String { set get } // read-write
    
    // initializers
    
    
    
    // methods
    func getSeedInfo ()
    

}
    
    


class SunflowerSeed: Food, Seed  {
    var calories: Int
    var plantType: String = "Sunflower"
    var taste: Bool = true
    
    init(calories: Int) {
        self.calories = calories
    }
    
    func getSeedInfo() {
        print("this is a \(plantType) seed ")
    }
    
    
}


protocol FullNamed {
    var fullName: String { get }
}

//struct Person: FullNamed {
//    var fullName: String
//}


class Person: CustomStringConvertible, Equatable, Comparable {
    
    
    
    var description: String {
        return "The person\'s age is \(age) and occupation is \(occupation)"
    }
    
    var age: Int
    var occupation: String
    
    init(age: Int, occupation: String) {
        self.age = age
        self.occupation = occupation
    }

    static func == (lhs: Person, rhs: Person) -> Bool {
        return
            lhs.age == rhs.age &&
            lhs.occupation == rhs.occupation
    }

    static func < (lhs: Person, rhs: Person) -> Bool {
        return  lhs.age < rhs.age

}

}






// create instances of the Person object

let Kathy = Person(age: 40, occupation: "Data scientist")
let Genisis = Person(age: 21, occupation: "software developer")




if Kathy == Genisis {
    print("same person")
} else {
    print("two different people")
}

let sortedPeople = [Kathy, Genisis].sorted { $0 < $1}
print(sortedPeople)
