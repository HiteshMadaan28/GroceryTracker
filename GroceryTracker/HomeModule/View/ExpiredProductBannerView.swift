//
//  ExpiredProductBannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct ExpiredProductBannerView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            Text("Expired products")
                .fontWeight(.bold)
                .padding(.bottom,14)
            
            VStack(spacing:0){
                
                HStack(spacing: 0) {
                    Text("Total Products")
                    
                    
                    Circle()
                        .stroke(Color.gray, lineWidth: 1) // Use .stroke() instead of .border() for a proper circle border
                        .frame(width: 24, height: 24) // Adjust the size of the circle
                        .foregroundStyle(Color.white)
                        .overlay {
                            Text("12")
                                .font(.system(size: 12, weight: .bold)) // Adjust text size and weight
                                .foregroundStyle(Color.black) // Ensure text is visible
                        }
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Text("View All")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.green)
                }
                .padding(.horizontal,16)
                .padding(.top,8)

                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:10){
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                        
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                        
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                        
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                        
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                        
                        VStack{
                            Circle()
                                .frame(width: 50)
                            
                            Text("Onion bag")
                        }
                    }
                    
                }
                .padding(.horizontal,16)
                .padding(.top)
                .padding(.bottom,20)
                
            }
            .padding(.top,10)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
        .padding(.horizontal,16)
    }
}

#Preview {
    ExpiredProductBannerView()
}
