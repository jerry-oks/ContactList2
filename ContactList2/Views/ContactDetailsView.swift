//
//  ContactDetailsView.swift
//  ContactList2
//
//  Created by HOLY NADRUGANTIX on 26.10.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: contact.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.secondary)
                    .frame(width: 150, height: 250)
                Spacer()
            }
            Label(contact.phone, systemImage: "phone.circle.fill")
            Label(contact.email, systemImage: "at.circle.fill")
        }
        .scrollDisabled(true)
        .navigationTitle(contact.fullName)
    }
}

#Preview {
    ContactDetailsView(contact: Contact(
        name: "Steve",
        surname: "Jobs",
        phone: "+1 (000) 000-00-00",
        email: "jobs@apple.com",
        photo: "person.fill"
    )
    )
}
