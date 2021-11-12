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
            List(contactList, id: \.self) { contact in
                Section(header: Text("\(contact.InfoList)")) {
                    HStack {
                        Image(systemName: "phone")
                        Text("\(contact.phoneNumbers)")
                    }
                    HStack {
                        Image(systemName: "envelope")
                        Text("\(contact.emails)")
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
