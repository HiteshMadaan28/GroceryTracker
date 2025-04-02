//
//  ExpiringSoonBannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct ExpiringSoonBannerView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            Text("Expiring Soon")
                .fontWeight(.bold)
                .padding(.bottom,14)
            
            VStack(spacing:0){
                
                HStack(spacing: 0) {
                    Text("Total Products")
                        .foregroundStyle(Color.white)
                    
                    Circle()
                        .stroke(Color.white, lineWidth: 1) // Use .stroke() instead of .border() for a proper circle border
                        .frame(width: 24, height: 24) // Adjust the size of the circle
                        .foregroundStyle(Color.white)
                        .overlay {
                            Text("12")
                                .font(.system(size: 12, weight: .bold)) // Adjust text size and weight
                                .foregroundStyle(Color.white) // Ensure text is visible
                        }
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Text("View All")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
                .padding(.horizontal,16)
                .padding(.top,8)
                
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            Rectangle()
                                .frame(width:130,height: 90)
                                .cornerRadius(16)
                            
                            VStack(alignment: .leading,spacing:0){
                                Text("Onion bag")
                                    .foregroundStyle(Color.white)
                                
                                Text("Expiry date :02/05/2024")
                                    .font(.custom("", size: 12))
                                    .foregroundStyle(Color.white.opacity(0.7))
                                    .padding(.top,4)
                                
                                Rectangle()
                                    .foregroundStyle(Color.green)
                                    .frame(width:80,height: 20)
                                    .cornerRadius(16) // Clips the corners
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16) // Border with corner radius
                                            .stroke(Color.white.opacity(0.7), lineWidth: 1) // Adjust color and width of border
                                    )
                                    .overlay {
                                        Text("View details")
                                            .font(.system(size: 8, weight: .bold))
                                            .foregroundStyle(Color.white)
                                    }
                                    .padding(.top,8)

                            }
                            .padding(.top,10)
                            .padding(.leading,8)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .top){
                            Rectangle()
                                .frame(width:130,height: 90)
                                .cornerRadius(16)
                            
                            VStack(alignment: .leading,spacing:0){
                                Text("Onion bag")
                                    .foregroundStyle(Color.white)
                                
                                Text("Expiry date :02/05/2024")
                                    .font(.custom("", size: 12))
                                    .foregroundStyle(Color.white.opacity(0.7))
                                    .padding(.top,4)
                                
                                Rectangle()
                                    .foregroundStyle(Color.green)
                                    .frame(width:80,height: 20)
                                    .cornerRadius(16) // Clips the corners
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16) // Border with corner radius
                                            .stroke(Color.white.opacity(0.7), lineWidth: 1) // Adjust color and width of border
                                    )
                                    .overlay {
                                        Text("View details")
                                            .font(.system(size: 8, weight: .bold))
                                            .foregroundStyle(Color.white)
                                    }
                                    .padding(.top,8)

                            }
                            .padding(.top,10)
                            .padding(.leading,8)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .top){
                            Rectangle()
                                .frame(width:130,height: 90)
                                .cornerRadius(16)
                            
                            VStack(alignment: .leading,spacing:0){
                                Text("Onion bag")
                                    .foregroundStyle(Color.white)
                                
                                Text("Expiry date :02/05/2024")
                                    .font(.custom("", size: 12))
                                    .foregroundStyle(Color.white.opacity(0.7))
                                    .padding(.top,4)
                                
                                Rectangle()
                                    .foregroundStyle(Color.green)
                                    .frame(width:80,height: 20)
                                    .cornerRadius(16) // Clips the corners
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16) // Border with corner radius
                                            .stroke(Color.white.opacity(0.7), lineWidth: 1) // Adjust color and width of border
                                    )
                                    .overlay {
                                        Text("View details")
                                            .font(.system(size: 8, weight: .bold))
                                            .foregroundStyle(Color.white)
                                    }
                                    .padding(.top,8)

                            }
                            .padding(.top,10)
                            .padding(.leading,8)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .top){
                            Rectangle()
                                .frame(width:130,height: 90)
                                .cornerRadius(16)
                            
                            VStack(alignment: .leading,spacing:0){
                                Text("Onion bag")
                                    .foregroundStyle(Color.white)
                                
                                Text("Expiry date :02/05/2024")
                                    .font(.custom("", size: 12))
                                    .foregroundStyle(Color.white.opacity(0.7))
                                    .padding(.top,4)
                                
                                Rectangle()
                                    .foregroundStyle(Color.green)
                                    .frame(width:80,height: 20)
                                    .cornerRadius(16) // Clips the corners
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16) // Border with corner radius
                                            .stroke(Color.white.opacity(0.7), lineWidth: 1) // Adjust color and width of border
                                    )
                                    .overlay {
                                        Text("View details")
                                            .font(.system(size: 8, weight: .bold))
                                            .foregroundStyle(Color.white)
                                    }
                                    .padding(.top,8)

                            }
                            .padding(.top,10)
                            .padding(.leading,8)
                            
                            Spacer()
                        }
                      
                    }
                    
                }
                .padding(.horizontal,16)
                .padding(.top)
                .padding(.bottom,20)
                
            }
            .padding(.top,10)
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
        .padding(.horizontal,16)
    }
}

#Preview {
    ExpiringSoonBannerView()
}
