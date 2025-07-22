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
            
            cards
            
            actions
        }
        .background(.black, in: RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 6)
    }
}

#Preview {
    ListView()
}


extension ListView {
    
    private var cards: some View {
        ZStack {
            ForEach(0..<5) { _ in
                CardView()
            }
        }
    }
    
    private var actions: some View {
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
}
