//
//  ContactList.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import Foundation

class ContactList: NSObject {
    let name: String
    let surname: String
    let emails: String
    let phoneNumbers: String
    
    var InfoList: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, emails: String, phoneNumbers: String){
        self.name = name
        self.surname = surname
        self.emails = emails
        self.phoneNumbers = phoneNumbers
    }

}

extension ContactList {
   static func getContact() -> [ContactList] {
        var employees: [ContactList] = []
        let personNames = DataManager.shared.name.shuffled()
        let personSurnames = DataManager.shared.surname.shuffled()
        let personEmails = DataManager.shared.email.shuffled()
        let personPhoneNumbers = DataManager.shared.phoneNumber.shuffled()
        
        //если массив будет разным по количеству элементов
        let iterationCount = min(personNames.count,personSurnames.count,personEmails.count,personPhoneNumbers.count)
        
        for index in 0..<iterationCount {
            let employee = ContactList(
                name: personNames[index],
                surname: personSurnames[index],
                emails: personEmails[index],
                phoneNumbers: personPhoneNumbers[index]
            )
            employees.append(employee)
        }
        return employees
    }

}

enum Contact: String {
    case phone = "Phone"
    case emails = "Email"
}
