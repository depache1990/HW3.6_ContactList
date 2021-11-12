//
//  DataManager.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let name = ["Joe", "Anna", "Anton", "Maria"]
    let surname = ["Hilton", "Swift", "Trump", "Mercedes"]
    let email = ["linkMe@gmail.com", "sendme@gmail.com", "love@gmail.com", "send@yahoo.com"]
    let phoneNumber = ["34352352", "775434566", "7928764532", "4342521111"]

    private init() {}
}
