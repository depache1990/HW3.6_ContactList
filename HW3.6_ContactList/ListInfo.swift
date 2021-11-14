//
//  ListInfo.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import SwiftUI

struct ListInfo: View {
    let contactList: [ContactList]
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                Section(header: Text("\(contact.InfoList)")) {
                    HStack {
                        Label(contact.phoneNumbers , systemImage: "phone")
                    }
                    HStack {
                        Label(contact.emails, systemImage: "tray")
                    }
                }
            }
            .navigationTitle("Contact Info")
        }
        
    }
}

struct ListInfo_Previews: PreviewProvider {
    static var previews: some View {
        ListInfo(contactList: ContactList.getContact())
    }
}
