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
            ForEach(0..<1) { _ in
                CardView()
            }
        }
    }
    
    private var actions: some View {
        HStack(spacing: 60) {
            Button {
                print("ボタンがタップされました")
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .stroke(.red, lineWidth: 1)
                            .frame(width: 60, height: 60)
                    }
            }
            Button {
                print("ボタンがタップされました")
            } label: {
                Image(systemName: "arrow.counterclockwise")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.yellow)
                    .background {
                        Circle()
                            .stroke(.red, lineWidth: 1)
                            .frame(width: 50, height: 50)
                    }
            }

            Button {
                print("ボタンがタップされました")
            } label: {
                Image(systemName: "heart")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.blue)
                    .background {
                        Circle()
                            .stroke(.red, lineWidth: 1)
                            .frame(width: 60, height: 60)
                    }
            }


        }
        .foregroundStyle(.white)
        .frame(height: 100)
    }
}
