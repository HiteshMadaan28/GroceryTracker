//
//  BannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct BannerView: View {
    let banners: [(image: String, title: String, description: String)] = [
        ("star.fill", "Just for you !", "Claim your exclusive offer today"),
        ("gift.fill", "Special Deal", "Get up to 50% off on all items"),
        ("heart.fill", "Limited Offer", "Hurry! Only a few spots left")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(banners, id: \.title) { banner in
                    BannerCard(image: banner.image, title: banner.title, description: banner.description)
                }
            }
            .padding([.leading,.trailing],16)
        }
    }
}

struct BannerCard: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.white)

            }
            .padding(.leading,10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.8))
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
            Spacer()
        }
        .frame(height: 100)
        .background(Color.green)
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

#Preview {
    BannerView()
}
