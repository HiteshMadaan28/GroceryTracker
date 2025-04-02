//
//  GroceryBudgetBannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct GroceryBudgetBannerView: View {
    var body: some View {
        VStack(alignment: .leading,spacing:0){
            Text("Grocery budget")
                .fontWeight(.bold)
                .padding(.bottom,14)
            
            HStack(spacing:0){
                Circle()
                    .frame(width: 50)
                    .foregroundStyle(Color.white)
                    .overlay {
                        Image(systemName: "wallet.bifold")
                            .resizable()
                            .frame(width: 26, height: 26)
                            .foregroundStyle(Color.green)
                    }
                    .padding(.leading,16)
                
                
                VStack(alignment:.leading,spacing:0){
                    Text("€39")
                        .font(.custom("", size: 25).bold())
                        .foregroundStyle(Color.white)
                        .padding(.bottom,4)
                    
                    Text("Your monthy budget")
                        .font(.custom("", size: 13).bold())
                        .foregroundStyle(Color.white.opacity(0.7))
                }
                
                .padding(.leading,10)
                
                Spacer()
                Circle()
                    .foregroundStyle(Color.white.opacity(0.2))
                    .frame(width: 35)
                    .overlay {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 12,height: 12)
                            .foregroundStyle(Color.white)
                    }
                    .padding(.trailing,16)
            }
            .frame(height: 86)
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 24))

        }
        .padding(.horizontal,16)
    }
}

#Preview {
    GroceryBudgetBannerView()
}
