//
//  ContactDetailsView.swift
//  ContactList2
//
//  Created by HOLY NADRUGANTIX on 26.10.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: contact.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 140)
                Spacer()
            }
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .scrollDisabled(true)
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    ContactDetailsView(contact: Person(
        name: "Steve",
        surname: "Jobs",
        phone: "+1 (000) 000-00-00",
        email: "jobs@apple.com",
        photo: "person.fill"
    )
    )
}
