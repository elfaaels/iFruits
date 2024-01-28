//
//  SettingsLabelView.swift
//  iFruits
//
//  Created by Elfana Anamta Chatya on 28/01/24.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
    }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        // Best config for custom components
        SettingsLabelView(labelText: "iFruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
