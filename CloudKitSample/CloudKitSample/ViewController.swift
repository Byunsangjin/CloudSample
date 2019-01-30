//
//  ViewController.swift
//  CloudKitSample
//
//  Created by Byunsangjin on 30/01/2019.
//  Copyright © 2019 Byunsangjin. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    // MARK:- Outlets
    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var nameLabel: UILabel!
    
    
    
    // MARK:- Constants
    let realm = try! Realm()
    
    
    
    // MARK:- Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // DB불러오는 메소드
    func selectDB() -> Array<Person> {
        var person = Array<Person>()
        let personDB = realm.objects(Person.self)
        
        for item in personDB {
            person.append(item)
        }
        
        return person
    }
    
    
    
    // 이름 저장하는 메소드
    func addDB(person: Person) {
        try! realm.write {
            realm.add(person)
        }
    }
    
    
    
    // MARK:- Actions
    @IBAction func saveBtnPressed(_ sender: Any) {
        let person = Person()
        person.name = self.nameTextfield.text
        self.addDB(person: person)
        
    }
    
    
    
    @IBAction func callNamePressed(_ sender: Any) {
        let person = selectDB()
        
        self.nameLabel.text = person.first?.name
    }
}

