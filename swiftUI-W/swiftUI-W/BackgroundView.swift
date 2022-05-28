//
//  BackgroundView.swift
//  swiftUI-W
//
//  Created by 执念 on 2022/5/28.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .gray : topColor , isNight ? .gray : bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}
