//
//  ViewController.swift
//  GroupFunctions
//
//  Created by Ansuke on 3/5/18.
//  Copyright © 2018 AM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct Person {
        let firstName: String
        let lastName: String
        let age: Int
    }
    
    let people = [
        Person(firstName: "Mark", lastName: "John", age: 34),
        Person(firstName: "Bob", lastName: "Hamill", age: 24),
        Person(firstName: "Jennifer", lastName: "Lane", age: 43),
        Person(firstName: "Matthew", lastName: "Smith", age: 25),
        Person(firstName: "James", lastName: "John", age: 23),
        Person(firstName: "Keith", lastName: "Jackson", age: 29)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let groupedDictionary = Dictionary(grouping: people) { (person) -> Character in
            return person.lastName.first!
        }
        
        var groupedPeople = [[Person]]()
        
        let keys = groupedDictionary.keys.sorted()
        keys.forEach { (key) in
            groupedPeople.append(groupedDictionary[key]!)
        }
        
        groupedPeople.forEach({
            $0.forEach({print($0)})
            print("---------------")
        })
    }
}

