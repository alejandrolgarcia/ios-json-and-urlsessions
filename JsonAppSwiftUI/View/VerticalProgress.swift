//
//  VerticalProgress.swift
//  JsonAppSwiftUI
//
//  Created by Luis Garcia on 28/01/22.
//

import SwiftUI

struct VerticalProgress: View {
    
    @State private var shouldAnimate = false
    
    var body: some View {
        HStack( alignment: .center, spacing: shouldAnimate ? 15 : 5) {
            
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: 50)
            
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: 30)
            
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: 50)
            
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: 30)
            
            Capsule(style: .continuous)
                .fill(Color.blue)
                .frame(width: 10, height: 50)
            
        }
        .frame(width: shouldAnimate ? 150 : 100)
        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: shouldAnimate)
        .onAppear{
            self.shouldAnimate = true
        }
    }
}
