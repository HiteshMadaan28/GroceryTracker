//
//  FloatingTabBarView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 03/04/25.
//

import SwiftUI

// MARK: - Floating Tab Bar View with Floating Button
struct FloatingTabBarView: View {
    var body: some View {
        ZStack {
            FloatingTabBarController()
                .edgesIgnoringSafeArea(.all)
        }
        .overlay{
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    FloatingButton(action: {
                        print("Floating Button Tapped!")
                    })
                    Spacer()
                }
                .padding(.bottom, 10) // Adjust position
            }
        }
    }
}

// MARK: - Floating Action Button
struct FloatingButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Circle()
                .fill(Color.green) // Background color
                .frame(width: 60, height: 60) // Circle size
                .overlay(
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.white)
                )
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 10) // White border stroke
                )
                .shadow(radius: 10)
        }
        .offset(y: -60) // Position above tab bar
    }
}

#Preview {
    NavigationStack{
        FloatingTabBarView()
            .ignoresSafeArea()
    }
}
