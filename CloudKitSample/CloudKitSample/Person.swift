//
//  Person.swift
//  CloudKitSample
//
//  Created by Byunsangjin on 30/01/2019.
//  Copyright © 2019 Byunsangjin. All rights reserved.
//

import Foundation
import IceCream
import RealmSwift
import CloudKit

class Person: Object {
    @objc dynamic var id = NSUUID().uuidString
    @objc dynamic var name: String?
    @objc dynamic var isDeleted = false
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

extension Person: CKRecordConvertible {
    
}

extension Person: CKRecordRecoverable {
    
}
