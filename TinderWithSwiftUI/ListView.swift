//
//  ListView.swift
//  TinderWithSwiftUI
//
//  Created by 原里駆 on 2025/07/13.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                ForEach(0..<5) { _ in
                    ZStack(alignment: .bottom) {
                        // Background
                        Color.black
                        // image
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100)
                        // Gradient
                        LinearGradient(colors: [.clear, .black], startPoint: .center, endPoint: .bottom)
                        // Information
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
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
            
            HStack(spacing: 60) {
                Circle()
                    .frame(width: 50, height: 50)
                Circle()
                    .frame(width: 50, height: 50)
                Circle()
                    .frame(width: 50, height: 50)
            }
            .foregroundStyle(.white)
            .frame(height: 100)
        }
        .background(.black, in: RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 6)
    }
}

#Preview {
    ListView()
}
