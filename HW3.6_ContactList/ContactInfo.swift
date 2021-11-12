//
//  ContactInfo.swift
//  HW3.6_ContactList
//
//  Created by Anton Duplin on 12/11/21.
//

import SwiftUI

struct ContactInfo: View {
    @State private var isPresented = false
    let contact: ContactList
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 120, height: 120)
                Spacer()
            }
            Label("\(contact.phoneNumbers)", systemImage: "phone")
            Label("\(contact.emails)", systemImage: "tray")
    }
        .navigationBarTitle(contact.InfoList)

    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: ContactList(name: "Alex", surname: "Mcgregor", emails: "meta@gmail.com", phoneNumbers: "+306988820457"))
    }
}
