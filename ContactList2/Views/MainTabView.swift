//
//  ContentView.swift
//  ContactList2
//
//  Created by HOLY NADRUGANTIX on 26.10.2023.
//

import SwiftUI

struct MainTabView: View {
    private let contacts = Person.getRandomContactList(sorted: false)
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.crop.rectangle.fill")
                    Text("Contacts")
                }
            ContactListDetailedView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.text.rectangle.fill")
                    Text("Contacts (detailed)")
                }
        }
    }
}

#Preview {
    MainTabView()
}
