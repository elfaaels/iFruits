//
//  SettingsRowView.swift
//  iFruits
//
//  Created by Elfana Anamta Chatya on 28/01/24.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil // --> optional property
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content ?? "None")
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel ?? "", destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Website", linkLabel: "My Website", linkDestination: "github.com/elfaael")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Developer", content: "Elfaael")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
