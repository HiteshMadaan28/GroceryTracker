//
//  TotalFamilyMembersBannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct TotalFamilyMembersBannerView: View {
    var body: some View {
        VStack(alignment: .leading,spacing:0){
            
            HStack(spacing: 0) {
                
                Circle()
                    .foregroundStyle(Color.green)
                    .frame(width: 40)
                    .overlay {
                        Image(systemName: "person.3")
                            .resizable()
                            .foregroundStyle(Color.white)
                            .frame(width: 20,height: 10)
                    }
                
                Text("Total Family Members")
                    .padding(.leading,8)
                
                
                Circle()
                    .stroke(Color.gray, lineWidth: 1) // Use .stroke() instead of .border() for a proper circle border
                    .frame(width: 24, height: 24) // Adjust the size of the circle
                    .foregroundStyle(Color.white)
                    .overlay {
                        Text("4")
                            .font(.system(size: 12, weight: .bold)) // Adjust text size and weight
                            .foregroundStyle(Color.black) // Ensure text is visible
                    }
                    .padding(.leading, 10)
                
                Spacer()

            }
            .padding(.horizontal,16)
            .padding(.top,8)
            
            HStack(spacing:0){
                Spacer()
                Spacer()
                VStack(spacing:0){
                    Text("Adults")
                        .foregroundStyle(Color.green)
                        .padding(.bottom,8)
                    
                    Text("2")
                        .fontWeight(.bold)
                }
                
                Spacer()
                Divider()
                    .frame(height: 30)
                Spacer()
                VStack(spacing:0){
                    Text("Children's")
                        .foregroundStyle(Color.green)
                        .padding(.bottom,8)
                    
                    Text("1")
                        .fontWeight(.bold)
                }
                
                Spacer()
                Spacer()
                
            }
            .frame(height:80)
            .background(Color.gray.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal,16)
            .padding(.top,8)
            

            Rectangle()
                .foregroundStyle(Color.white)
                .frame(height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 16) // Border with corner radius
                        .stroke(Color.gray.opacity(0.4), lineWidth: 1) // Adjust color and width of border
                )
                .overlay {
                    Text("View")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(Color.green)
                }
                .padding(.top,10)
                .padding(.vertical,16)
                .padding(.horizontal,16)
            
        }
        .padding(.top,10)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(.horizontal,16)
    }
}

#Preview {
    TotalFamilyMembersBannerView()
}
