//
//  HomeScreen.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import SwiftUI

struct HomeScreen: View {
    let contactList: [ContactList]
    var body: some View {
        NavigationView {
            List(contactList) {
                contact in
                NavigationLink("\(contact.InfoList)") {
                    ContactInfo(contact: contact)
                }
            }
            .navigationTitle("Contact List")
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(contactList: ContactList.getContact())
    }
}
