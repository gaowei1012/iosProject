//
//  ButtonView.swift
//  swiftUI-W
//
//  Created by 执念 on 2022/5/28.
//

import SwiftUI

struct ButtonView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var borderRadius: Double
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold, design: .default))
            .frame(width: 280, height: 50)
            .cornerRadius(borderRadius)
            .foregroundColor(textColor)
            .background(backgroundColor)
        
    }
}
