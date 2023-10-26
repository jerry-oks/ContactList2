//
//  ContactListDetailedView.swift
//  ContactList2
//
//  Created by HOLY NADRUGANTIX on 26.10.2023.
//

import SwiftUI

struct ContactListDetailedView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    Label(contact.phone, systemImage: "phone.circle.fill")
                    Label(contact.email, systemImage: "at.circle.fill")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListDetailedView(contacts: Contact.getRandomContactList())
}