//
//  ProfileView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile Screen")
                .font(.largeTitle)
                .bold()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.purple)
        }
    }
}

#Preview {
    ProfileView()
}
