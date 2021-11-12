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
        Button(action: { isPresented.toggle() }) {
            VStack {
                Text("\(contact.)")
                
            }
        }

    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: ContactList)
    }
}
