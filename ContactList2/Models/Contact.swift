//
//  Contact.swift
//  ContactList
//
//  Created by HOLY NADRUGANTIX on 23.08.2023.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phone: String
    let email: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomContactList() -> [Contact] {
        var contacts: [Contact] = []
        
        let data = DataStore.shared
        
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        let count = [names.count, surnames.count, phones.count, emails.count].min() ?? 0
        
        for index in 0..<count {
            contacts.append(
                Contact(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index],
                    photo: "person.fill"
                )
            )
        }
        
        return contacts.sorted { $0.name < $1.name }
    }
}

