//
//  NotificationsView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Notifications Screen")
                .font(.largeTitle)
                .bold()
            Image(systemName: "bell.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.orange)
        }
    }
}

#Preview {
    NotificationsView()
}
