//
//  ScanView.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        VStack {
            Text("Scan Screen")
                .font(.largeTitle)
                .bold()
            Image(systemName: "qrcode.viewfinder")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
    }
}


#Preview {
    ScanView()
}
