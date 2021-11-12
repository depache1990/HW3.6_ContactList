//
//  DataManager.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let name = [
        "Joe", "Anna", "Anton", "Maria",
        "Ted","Steven", "Sharon", "Nicola"
    ]
    let surname = [
        "Hilton", "Swift", "Trump", "Mercedes",
        "Jankin", "Butler", "Black", "Robertson"
    ]
    let email = [
        "linkMe@gmail.com", "sendme@gmail.com", "love@gmail.com", "send@yahoo.com",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru","xxxx@mail.ru"
    ]
    let phoneNumber = [
        "34352352", "775434566", "7928764532", "4342521111",
        "562880225", "738594072", "825654134", "645898473"
    ]

    private init() {}
}
