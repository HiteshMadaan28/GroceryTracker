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
                    
                    NavigationLink(destination: ViewAllProducts()) {
                        Text("View All")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                    }
                   
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


struct ViewAllProducts: View {
    let products = Array(1...12).map { "Product \($0)" } // Sample product list
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(products, id: \.self) { product in
                    HStack(alignment: .top) {
                        Rectangle()
                            .frame(width: 130, height: 90)
                            .cornerRadius(16)
                            .foregroundStyle(Color.gray.opacity(0.3))
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(product)
                                .font(.headline)
                                .foregroundStyle(Color.primary)
                            
                            Text("Expiry date: 02/05/2024")
                                .font(.system(size: 12))
                                .foregroundStyle(Color.secondary)
                            
                            Button(action: {}) {
                                Text("View details")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundStyle(Color.white)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 5)
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                            .padding(.top, 5)
                        }
                        .padding(.leading, 8)
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 2)
                }
            }
            .padding()
        }
        .navigationTitle("Expiring Soon Products")
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    NavigationStack {
        ViewAllProducts()
    }
}
