//
//  ContentView.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import SwiftUI

struct ContentView: View {
    let contactList = ContactList.getContact()
    var body: some View {
        TabView{
            HomeScreen(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Contacts")
                }
            ListInfo(contactList: contactList)
                .tabItem{
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
