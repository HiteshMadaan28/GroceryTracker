//
//  HomeContentView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        VStack(spacing:0){
            HomeHeaderView()
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:0){
                    
                    
                    BannerView()
                        .padding(.top,10)
                    
                    GroceryBudgetBannerView()
                        .padding(.top,20)
                    
                    ExpiredProductBannerView()
                        .padding(.top,20)
                    
                    ExpiringSoonBannerView()
                        .padding(.top,20)
                    
                    TotalFamilyMembersBannerView()
                        .padding(.top,20)
                        .padding(.bottom,130)
                    
                }
            }
            
           
        }
        .background(Color.gray.opacity(0.1))
        .ignoresSafeArea(.all)
    }
}

#Preview {
    HomeContentView()
}
