//
//  Event.swift
//  myEvent
//
//  Created by Andrey on 17.03.2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation

class Event {
    let firstName: String
    let lastName: String
    let birthdate: Date
    init(firstName: String, lastName: String, birthdate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
