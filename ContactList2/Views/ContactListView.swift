//
//  ContactListView.swift
//  ContactList2
//
//  Created by HOLY NADRUGANTIX on 26.10.2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(
                    contact.fullName,
                    destination: ContactDetailsView(
                        contact: contact
                    )
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView(contacts: Contact.getRandomContactList())
}
