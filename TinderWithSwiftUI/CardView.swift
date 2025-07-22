//
//  CardView.swift
//  TinderWithSwiftUI
//
//  Created by 原里駆 on 2025/07/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            // Background
            Color.black
            // image
            imageLayer
            // Gradient
            LinearGradient(colors: [.clear, .black], startPoint: .center, endPoint: .bottom)
            // Information
            informationLayer
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    CardView()
}

extension CardView {
    private var imageLayer: some View {
        Image("avatar")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100)
    }
    
    private var informationLayer: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text("ブルー")
                    .font(.largeTitle.bold())
                Text("99")
                    .font(.title2)
                
                Circle()
                    .frame(width: 22, height: 22)
            }
            
            Text("よろしくお願いします")
        }
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
