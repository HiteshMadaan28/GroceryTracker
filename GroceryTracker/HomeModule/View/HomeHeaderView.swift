//
//  HomeHeaderView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(spacing:0){
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color.green)
                .overlay {
                    Image("scanner")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.white)
                        .frame(width: 13, height: 13)
                }
            
            Text("Grocery tracker")
                .padding(.leading,10)
            
            Spacer()
            
            HStack(spacing: 5) { // Added spacing for better appearance
                Image(systemName: "crown.fill")
                    .resizable()
                    .frame(width: 13, height: 13)
                    .foregroundStyle(Color.white)
                    .padding(.leading,10)

                Text("Subscribe")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(Color.white)
                    .padding(.trailing,10)
            }
            .frame(height: 30)
            .padding(.horizontal, 12)
            .background(
                LinearGradient(
                    colors: [Color.green.opacity(0.8), Color.green],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: 18))
            

        }
        .padding([.leading,.trailing],16)
        .padding(.top,60)
        .padding(.bottom,10)
    }
}

#Preview {
    HomeHeaderView()
}
