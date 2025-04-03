//
//  ExpiredProductBannerView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct ExpiredProductBannerView: View {
    let expiredProducts: [ExpiredProduct] = [
        ExpiredProduct(name: "Onion Bag", expirationDate: "01 April 2025"),
        ExpiredProduct(name: "Milk Carton", expirationDate: "02 April 2025"),
        ExpiredProduct(name: "Yogurt Pack", expirationDate: "03 April 2025"),
        ExpiredProduct(name: "Cheese Block", expirationDate: "04 April 2025"),
        ExpiredProduct(name: "Bread Loaf", expirationDate: "05 April 2025"),
        ExpiredProduct(name: "Eggs", expirationDate: "06 April 2025")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Expired Products")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.bottom, 14)
            
            VStack(spacing: 0) {
                
                HStack {
                    Text("Total Products")
                    
                    Circle()
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color.white)
                        .overlay {
                            Text("\(expiredProducts.count)")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundStyle(Color.black)
                        }
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    NavigationLink(destination: ExpiredProductView(expiredProducts: expiredProducts)) {
                        Text("View All")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.green)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
                
                // Horizontal Scroll of Expired Products
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(expiredProducts.prefix(5), id: \.name) { product in
                            
                            VStack {
                                Circle()
                                    .frame(width: 65, height: 65)
                                    .foregroundStyle(Color.gray.opacity(0.3))
                                
                                Text(product.name)
                                    .font(.custom("", size: 12))
                            }
                        }
                        
                    }
                    .padding(.horizontal, 16)
                }
             
                .padding(.top)
                .padding(.bottom, 20)
                
            }
            .padding(.top, 10)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    NavigationStack {
        ExpiredProductBannerView()
    }
}

struct ExpiredProduct: Identifiable {
    let id = UUID()
    let name: String
    let expirationDate: String
}

struct ExpiredProductView: View {
    let expiredProducts: [ExpiredProduct]
    
    var body: some View {
        List(expiredProducts) { product in
            HStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.gray.opacity(0.3))
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.headline)
                    Text("Expired on: \(product.expirationDate)")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                Spacer()
            }
            .padding(.vertical, 6)
        }
        .listStyle(.plain)
        .navigationTitle("Expired Products")
    }
}
