//
//  EntireItemsView.swift
//  ShishiVault
//
//  Created by Markus Wirtz on 14.11.24.

import SwiftUI

struct EntrieListItem: View {
    
    var title: String = ""
    var email: String = ""
    var created = Date()
    var website: String = ""
    
    var body: some View {
        // Einträge-Element
        ZStack {
            Rectangle()
                .foregroundStyle(Color.ShishiColorPanelBackground)
                .clipShape(.rect(cornerRadius: 10))
                .shadow(radius: 1, x: 0, y: 1)
            
            HStack {
                Image(systemName: "lock.document.fill")
                    .foregroundStyle(Color.ShishiColorBlue)
                    .scaleEffect(2.4)
                    .padding(.horizontal, 20)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .panelTextBold()
                    HStack {
                        Text("Mail:")
                            .panelText()
                        Text(email.count > 28 ? String(email.prefix(28)) + " ..." : email)
                            .panelText()
                        Spacer()
                    }
                    HStack {
                        Text("Link:")
                            .panelText()
                        Text(website.count > 29 ? String(website.prefix(29)) + " ..." : website)
                            .panelText()
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    Text("Aktualisiert am: \(created.formatted())")
                        .font(.caption2)
                        .foregroundStyle(Color.ShishiColorDarkGray)
                        .padding(0)
                }
                Spacer()
                
//                Image(systemName: "info.circle")
//                    .scaleEffect(1.2)
//                    .foregroundColor(Color.ShishiColorDarkGray)
//                    .padding(10)
                
            }
            .padding(10)
            
        }
        .padding(.horizontal)
        .padding(.vertical, 1)
        
    }
}

#Preview {
    EntrieListItem(title: "Amazon Shopping", email: "markus@meinedomain.com", created: Date(), website: "http://www.meinedomain.com")
}
